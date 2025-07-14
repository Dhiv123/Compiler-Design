%{
#include <stdio.h>
%}

%%
"/*"([^*]*|\*+[^*/])*\*+\/     { printf("BLOCK COMMENT REMOVED\n"); }
"//".*                         { printf("LINE COMMENT REMOVED\n"); }
.|\n                           { ECHO; }  // Print other characters as is
%%

int main() {
    yylex();
    return 0;
}
