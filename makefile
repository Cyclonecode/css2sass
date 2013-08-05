all:
	flex -v css2sass.l
	bison -d -v css2sass.y
	cc css2sass.tab.c lex.yy.c -o css2sass