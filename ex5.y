%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);         // Prototype for yylex function
int yyerror(char *msg);  // Prototype for yyerror function
%}

%token A B NL

%%
stmt: A A A A A A A A A A S B NL {
    printf("valid string\n");
    exit(0);
}
;

S: S A
 |
 ;
%%

int yyerror(char *msg)
{
    printf("invalid string\n");
    exit(0);
}

int main()
{
    printf("enter the string\n");
    yyparse();
    return 0;
}
