%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

"int"       { return INT; }
"float"     { return FLOAT; }
"char"      { return CHAR; }
"double"    { return DOUBLE; }

[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }

";"         { return ';'; }

[ \t]+      ;
\n          { return '\n'; }

.           { return yytext[0]; }

%%

int yywrap(void)
{
    return 1;
}
