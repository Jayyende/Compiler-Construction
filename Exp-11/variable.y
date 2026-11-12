%{
#include <stdio.h>

int yylex(void);
int yyerror(char *s);
%}

%token INT FLOAT CHAR DOUBLE ID

%%

program:
        /* empty */
      | program line
      ;

line:
        declaration '\n'
      | error '\n'   { printf("Invalid variable declaration\n"); yyerrok; }
      ;

declaration:
        INT ID ';'       { printf("Valid variable declaration\n"); }
      | FLOAT ID ';'     { printf("Valid variable declaration\n"); }
      | CHAR ID ';'      { printf("Valid variable declaration\n"); }
      | DOUBLE ID ';'    { printf("Valid variable declaration\n"); }
      ;

%%

int yyerror(char *s)
{
    return 0;
}

int main()
{
    printf("Enter variable declarations:\n");
    yyparse();
    return 0;
}
