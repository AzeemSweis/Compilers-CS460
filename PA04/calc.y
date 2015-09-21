%{
	#include "stdio.h"
	#include "calc.tab.h"
%}

%union{
	int ival;
}
%token <ival> PLUS
%token <ival> MINUS
%token <ival> MULT
%token <ival> DIV
%token <ival> INTEGER
%token <ival> SEMI
%token <ival> OPEN
%token <ival> CLOSE
%token <ival> ERROR
%type <ival> Line
%type <ival> Fact
%type <ival> Expr
%type <ival> Term
%%

Start	:	Start Line 
		|	;
Line	:	SEMI 
		|	Expr SEMI { printf("%d\n", $1); }
Expr	:	Term PLUS Expr	{ $$ = $1 + $3; }
		|	Term MINUS Expr	{ $$ = $1 - $3; }
		|	Term {$$ = $1;};
Term	:	Fact MULT Term	{ $$ = $1 * $3; }
		|	Fact DIV Term	{ $$ = $1 / $3; }
		|	Fact { $$ = $1; };
Fact	:	OPEN Expr CLOSE { $$ = $2; }
		|	INTEGER { $$ = $1; };

%%

main(){
	yyparse();
}
yyerror( char* msg ){
	printf( "%s\n", msg );
}