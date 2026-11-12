
%{
#include <stdio.h>
%}

%%

[0-9]+(\.[0-9]+)?([eE][+-]?[0-9]+)? {
    printf("%s is a Number\n", yytext);
}

[a-zA-Z0-9.]+ {
    printf("%s is NOT a Number\n", yytext);
}

[ \t\n]+ ;

. ;

%%

int main()
{
    printf("Enter values:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
