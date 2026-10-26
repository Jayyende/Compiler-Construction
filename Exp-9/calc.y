%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int yylex(void);
int yyerror(const char *s);
%}

%token NUMBER INC DEC INVALID

%left '+' '-'
%left '*' '/' '%'
%right UMINUS
%left INC DEC
%right '^'

%%

input:
      /* empty */
    | input line
    ;

line:
      expr '\n' {
          printf("Result = %d\n", $1);
      }
    | error '\n' {
          printf("Error recovered. Enter next expression.\n");
          yyerrok;
      }
    ;

expr:
      NUMBER                 { $$ = $1; }
    | expr '+' expr          { $$ = $1 + $3; }
    | expr '-' expr          { $$ = $1 - $3; }
    | expr '*' expr          { $$ = $1 * $3; }
    | expr '/' expr          {
          if ($3 == 0) {
              yyerror("Division by zero");
              YYERROR;
          }
          $$ = $1 / $3;
      }
    | expr '%' expr          {
          if ($3 == 0) {
              yyerror("Modulo by zero");
              YYERROR;
          }
          $$ = $1 % $3;
      }
    | expr '^' expr          { $$ = (int)pow($1, $3); }
    | '-' expr %prec UMINUS  { $$ = -$2; }
    | '(' expr ')'           { $$ = $2; }
    | expr INC               { $$ = $1 + 1; }
    | expr DEC               { $$ = $1 - 1; }
    | INC expr               { $$ = $2 + 1; }
    | DEC expr               { $$ = $2 - 1; }
    | INVALID                {
          yyerror("Invalid character");
          YYERROR;
      }
    ;

%%

int yyerror(const char *s)
{
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}

int main(void)
{
    printf("Desk Calculator with Error Recovery\n");
    printf("Operators: + - * / %% ^ ++ --\n");
    printf("Enter one expression per line. Ctrl+D to exit.\n");

    yyparse();
    return 0;
}
