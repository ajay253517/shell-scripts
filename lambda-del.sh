#!/bin/bash 
REGION="ap-south-1"

echo "Filtering lambda based on Tag RunsOn=Zip"

for i in $(aws lambda list-functions --query 'Functions[*].[FunctionArn]' --output text --profile admin)
do 
  echo "Checking for arn function: $i"
  FILE_TYPE=$(aws lambda list-tags --resource $i  --profile admin | jq '.Tags.RunsOn' | sed 's/"//g')
  if [[ "$FILE_TYPE" == "Zip" ]]; then 
    echo "$i will deleted"
    aws lambda delete-function --function-name $i --profile admin 
  else 
    echo "$i is not matching"
  fi 
done 