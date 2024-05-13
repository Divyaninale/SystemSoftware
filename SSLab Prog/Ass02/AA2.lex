%{
#include<stdio.h>
int lc,cc,wc,sp;
%}
%%
[\n] {lc++;}
[^ \t\n]* {wc++;}
[ \t] {sp++;}
%%
int yywrap()
{
	return 1;
}
int main()
{	
	 printf("Enter the Statement=:");
	 /*extern FILE *yyin;
	 yyin=fopen("abc.txt","r");*/ 
	 yylex();
	 printf("Number of lines =%d",lc);
	 printf("Number of words=%d",wc);
	 printf("Number of Spaces=%d",sp);
}

