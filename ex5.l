%{
#include "y.tab.h"
#include <stdio.h>
%}

/* Rule Section */
%%

[aA] { return A; }
[bB] { return B; }
\n { return NL; }
. { /* Ignore any other characters */ }

%%


int yywrap() {
    return 1;
}