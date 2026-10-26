%{
#include <stdio.h>
#include <stdlib.h>
//JAY - 24070521139

%}

%%

[0-9]+ {
    int n = atoi(yytext);
    printf("Decimal: %d -> Hexadecimal: %X\n", n, n);
}

[ \t\n]+ ;

. {
    printf("Invalid input: %s\n", yytext);
}

%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
