%{
        #include<stdio.h>
        #include"y.tab.h"
        
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {return identifier;}
int {return INT;}
float {return FLOAT;}
%%
int yywrap()
{
         return 1;
}

int main()
{
        
        yylex();
        return 0;
}



