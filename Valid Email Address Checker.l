%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}  { printf("VALID EMAIL: %s\n", yytext); }
.|\n                                             { /* Ignore others */ }
%%

int main() {
    yylex();
    return 0;
}
