
%{
#include "calc.tab.h"
%}

%%

"+" return PLUS;
"-" return MINUS;
"*" return MULT;
"/" return DIV;
[0-9]+	{
	unsigned long testInt = strtol(yytext, NULL,10);
	unsigned long max = 2147483647;
	if( testInt > max )
	{
		printf("Integer Overflow %lu\n", testInt);
		return ERROR;
	}
	yylval = testInt;
	return INTEGER;
}
";" return SEMI;
"(" return OPEN;
")" return CLOSE;
[ \t\n] ;
.	return ERROR;

%%
