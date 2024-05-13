%{ 
#include<stdio.h>
%}
%token datatype id comma SC NL
%%
start: datatype varlist SC NL {printf("\n Declartaion Statement is Syntactically Correct");}
	| varlist: varlist comma id|id;
%%
int main()
{
printf("\n Enter the Declaration Statement=:");
 yyparse();
}
int yywrap()
{
 return 1;
} 
int yyerror(const char *str)
{
	printf("\nSyntax Error"); 
	return 0;
}	
	
