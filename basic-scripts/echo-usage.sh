#!/bin/bash
#all options of echo usage

echo "To display the examples of echo" 

echo Example No 1 
echo -e "Just print as it is\n"

echo Example No 2
echo printing varibale value x
x=10
echo -e "the value of variable x is $x \n"

echo Example No 3 using echo -e and backspace
echo Note no spaces between backspace
echo -e "This \bis \bexample \bfor \bbackspace\n"

echo Example No 4 using new line 
echo -e "This \nis \nexample \nfor \nnew \nline\n"

echo Example No 5 using tabs 
echo note "\t" for horizontal "\v" for vertical
echo -e "This \tis \texample \vfor \vnew \vline\n"

echo "Using colours and bold fornt in echo more detail available in man console_codes"
echo -e "There are two types of coloring scheme foreground and backgroud"
echo -e "Now changing the foreground ie fornt color"
echo -e "\e[31m Hello \n"
echo -e "\e[32m Hello \n"
echo -e "\e[33m Hello \n"
echo -e "\e[34m Hello \n"
echo -e "\e[35m Hello \n"
echo -e "\e[36m Hello \n"
echo 
echo -e "Now changing the backgroud"
echo -e "\e[41m Hello \n"
echo -e "\e[42m Hello \n"
echo -e "\e[43m Hello \n"
echo -e "\e[44m Hello \n"
echo -e "\e[45m Hello \n"
echo -e "\e[46m Hello \n"

echo -e "Now both foreground and backgroud"
echo -e "\e[30;44m Hello "
echo -e "To print in bold "
echo -e "\e[1;30;44m Hello "
echo -e "Now reset"
echo -e "\e[0m Hello "

echo -n "It echo - n is used to disable new line"
echo -e "listing files using echo\n"
echo * \n