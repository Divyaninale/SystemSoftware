%{
#include<stdio.h>
int flag=0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '{' '}'

%%
ArithematicExpression: E{
                         printf("\n+Result=%d\n",$$);
                         return 0;
};

E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*' E{$$=$1*$3;}
|E'%' E{$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main()
{
printf("enter arithematic Expression=");
yyparse();
if(flag==0)
     printf("Enter arithematic opertion is valid");
}
void yyerror()
{
     printf("Enter arithematic opertion is invalid");
     flag=1;
}
