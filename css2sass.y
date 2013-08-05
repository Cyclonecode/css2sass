%require  "2.7"
%debug
%expect 0
%{
#include <stdio.h>

int yylex(void);
int yyparse(void);

void yyerror(const char* str) {
	fprintf(stderr,"error:%s\n",str);
}

int yywrap() {
	return 1;
}

int main() {
    yyparse();
    return 0;
}
%}

%%
css2sass    :   /* empty */
            ;
%%