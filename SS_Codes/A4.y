%{
#include<stdio.h>
%}
%token Word Compound Dot
%%

start:wordlist Compound wordlist Dot{printf("\nCompound Sentence");}
      |wordlist Dot {printf("\n Simple Sentence");};
      |wordlist:Word wordlist
      	|Word
      	;	
%%
int main()
{
	yyparse();
	return 0;
}
int yywrap()
{
	return 1;
}
int yyerror()
{
return 0;
}


