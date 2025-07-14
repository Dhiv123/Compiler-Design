%{
#include <stdio.h>
char *keywords[] = {"int", "float", "char", "return", "if", "else", "while", "for", NULL};
int is_keyword(char *word) {
    for (int i = 0; keywords[i]; i++)
        if (strcmp(word, keywords[i]) == 0) return 1;
    return 0;
}
%}

%%
[ \t\n]+              ;
[0-9]+                { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* {
    if (is_keyword(yytext))
        printf("KEYWORD: %s\n", yytext);
    else
        printf("IDENTIFIER: %s\n", yytext);
}
.                     { printf("SYMBOL: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

