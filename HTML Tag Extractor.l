%{
#include <stdio.h>
%}

%%

"<"[^>]+">"     { printf("HTML TAG: %s\n", yytext); }
[^<]+           ;  // Ignore non-tags
\n              ;  // Ignore newlines

%%

int main() {
    yylex();
    return 0;
}

