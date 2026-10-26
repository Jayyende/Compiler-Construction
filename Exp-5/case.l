%{
#include <stdio.h>
//JAY - 24070521139

void changeCase(char *str)
{
    int i;

    for(i = 0; str[i] != '\0'; i++)
    {
        if(str[i] >= 'a' && str[i] <= 'z')
            str[i] = str[i] - 32;
        else if(str[i] >= 'A' && str[i] <= 'Z')
            str[i] = str[i] + 32;
    }
}
%}

%%

[a-zA-Z]+    { changeCase(yytext); printf("%s", yytext); }

[ \t\n]+      { printf("%s", yytext); }

.             { printf("%s", yytext); }

%%

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
