%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }

"++"        { return INC; }
"--"        { return DEC; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"%"         { return '%'; }
"^"         { return '^'; }

"("         { return '('; }
")"         { return ')'; }

[ \t]+      ;
\n          { return '\n'; }

.           { return INVALID; }

%%

int yywrap(void)
{
    return 1;
}
