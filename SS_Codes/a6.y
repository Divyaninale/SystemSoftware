%{
/*Declaration Section*/

#include<stdio.h>
int flag=0;
%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/*Rule Section*/
%%

S:E{
	printf("\nResult=%d\n", $$);
	return 0;
	};
E:E'+'E {$$=$1+$3;}
|E:E'-'E {$$=$1-$3;}
|E:E'*'E {$$=$1*$3;}
|E:E'/'E {$$=$1/$3;}
|E:E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
| NUMBER {$$=$1;}

;
%%

void main()
{
printf("\nEnter Any Arithmetic Expression: ");

yyparse();
if(flag==0)
printf("\nEntered Arithmetic Expression is valid \n\n");
}

void yyerror()
{
printf("\nEntered Arithmetic Expression is Invalid\n\n");
flag=1;
}

