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
%type <ival> Fact
%type <ival> Start
%type <ival> Expr
%type <ival> Term
%%

Start	:	Expr SEMI { printf("%d", $1); };
Expr	:	Expr PLUS Term	{ $$ = $1 + $3; }
		|	Expr MINUS Term	{ $$ = $1 - $3; }
		|	Term {$$ = $1;};
Term	:	Term MULT Fact	{ $$ = $1 * $3; }
		|	Term DIV Fact	{ $$ = $1 / $3; }
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