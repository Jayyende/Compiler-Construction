%{
#include <stdio.h>
#include <string.h>

int yylex(void);
int yyerror(char *s);

int temp = 1;
%}

%union {
    char name[10];
}

%token <name> ID
%type <name> expr

%left '+' '-'
%left '*' '/'

%%

input:
      /* empty */
    | input line
    ;

line:
      expr '\n'
    | error '\n'  { printf("Invalid expression\n"); yyerrok; }
    ;

expr:
      ID
      {
          strcpy($$, $1);
      }
    | expr '+' expr
      {
          sprintf($$, "t%d", temp);
          printf("%s = %s + %s\n", $$, $1, $3);
          temp++;
      }
    | expr '-' expr
      {
          sprintf($$, "t%d", temp);
          printf("%s = %s - %s\n", $$, $1, $3);
          temp++;
      }
    | expr '*' expr
      {
          sprintf($$, "t%d", temp);
          printf("%s = %s * %s\n", $$, $1, $3);
          temp++;
      }
    | expr '/' expr
      {
          sprintf($$, "t%d", temp);
          printf("%s = %s / %s\n", $$, $1, $3);
          temp++;
      }
    | '(' expr ')'
      {
          strcpy($$, $2);
      }
    ;

%%

int yyerror(char *s)
{
    return 0;
}

int main()
{
    printf("Enter arithmetic expressions (Ctrl+D to exit):\n");
    yyparse();
    return 0;
}
