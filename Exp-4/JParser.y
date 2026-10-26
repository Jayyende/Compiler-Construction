%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);
int yyparse();
%}

%token NUM

%%

E : E '+' T
  | E '-' T
  | T
  ;

T : T '*' F
  | T '/' F
  | F
  ;

F : '(' E ')'
  | NUM
  ;

%%

int yyerror(char *s)
{
    printf("Invalid Expression!!\n");
    return 0;
}

int main()
{
    printf("Enter an Expression: ");

    if (yyparse() == 0)
        printf("Valid expression\n");

    return 0;
}
