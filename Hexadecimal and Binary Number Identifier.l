%{
#include <stdio.h>
%}

%%
0[xX][0-9a-fA-F]+    { printf("HEX: %s\n", yytext); }
0[bB][01]+           { printf("BINARY: %s\n", yytext); }
[0-9]+               { printf("DECIMAL: %s\n", yytext); }
.                    { /* ignore */ }
%%

int main() {
    yylex();
    return 0;
}
