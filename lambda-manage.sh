#!/bin/bash 
REGION="ap-south-1"
echo "Listing available functions in $REGION"

aws lambda list-functions --query 'Functions[*].[FunctionName,FunctionArn]' --output table --profile admin

echo "--------------------------------"

echo "Filtering lambda based on Tags"

for i in $(aws lambda list-functions --query 'Functions[*].[FunctionArn]'  --profile admin | grep arn | sed 's/"//g')
do 
  echo "Arn of function $i"
  FILE_TYPE=$(aws lambda list-tags --resource $i  --profile admin | jq '.Tags.file' | sed 's/"//g')
  if [[ "$FILE_TYPE" == "zip" ]]; then 
    echo "$i is a zip deployment"
    aws lambda tag-resource --resource $i --tags "RunsOn=Zip" --profile admin
  elif [[ "$FILE_TYPE" == "docker" ]]; then 
    echo "$i is a docker deployment"
    aws lambda tag-resource --resource $i --tags "RunsOn=Docker" --profile admin
  else 
    echo "Not a matching deployment"
  fi 
  echo "---------------------------------"
done 