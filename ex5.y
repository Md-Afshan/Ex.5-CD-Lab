%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex(void);
%}

%token A B NL

%% 

stmt: S NL { printf("Valid string\n"); exit(0); }
;

S: A S B | /* Allow for empty production */
  
;

%% 

void yyerror(char *s) {
    fprintf(stderr, "Invalid string\n");
}

int main() {
    printf("Enter the string:");
    yyparse();
    return 0;
}
