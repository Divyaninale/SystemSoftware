%{
	#include<stdio.h>
%}

%token identifier type

%%
start:Words Fullstop {printf("\nSimple Sentence");} | Words Connectives Words Fullstop {printf("\nCompound Sentence");}
	|Words: Word Words| Word;	 
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

