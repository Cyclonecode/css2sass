%{
#include "css2sass.tab.h"
extern void yyerror(char*);
%}

%option debug

%%

[ \f\t\r\n]+        ;   /* eat whitespaces */
.                   { yyerror("syntax error\n"); }
%%