%{
#include <stdio.h>

int yylex(void);
int yyerror(const char *s);
%}

%token FOR ID NUM RELOP INC DEC

%%

stmt:
      FOR '(' init ';' condition ';' update ')' '{' '}' '\n'
      {
          printf("Valid FOR loop statement\n");
      }
    ;

init:
      ID '=' NUM
    ;

condition:
      ID RELOP NUM
    ;

update:
      ID '=' ID '+' NUM
    | ID '=' ID '-' NUM
    | ID INC
    | ID DEC
    ;

%%

int yyerror(const char *s)
{
    printf("Invalid FOR loop statement\n");
    return 0;
}

int main(void)
{
    printf("Enter a FOR loop statement:\n");
    yyparse();
    return 0;
}
