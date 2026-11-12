%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

[a-zA-Z][a-zA-Z0-9]* {
    strcpy(yylval.name, yytext);
    return ID;
}

[+\-*/()]  { return yytext[0]; }

[ \t]      ;

\n         { return '\n'; }

.          { return yytext[0]; }

%%

int yywrap(void)
{
    return 1;
}
