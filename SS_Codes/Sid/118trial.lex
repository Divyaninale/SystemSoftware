%{
	#include<stdio.h>
	int cnt_pos=0;
	int cnt_neg=0;
	
%}
%%
	[0-9]+ {cnt_pos++; printf("\n%s is positive",yytext);}
	[0-9]+ {cnt_neg++; printf("\n%s is negative",yytext);}

%%
int yywrap()
{
	return 1;
}
int main()
{
	yyin=fopen("118ass3txtfile.txt","r");
	printf("Count of positive numbers ",cnt_pos);  
	printf("Count of negative numbers ",cnt_neg);
	yylex();
	return 0;
}

