%{
#include<stdio.h>
#include<string.h>
int i=0;
char c;
%}

%%
[a-z] {c=(char)yytext;printf("%c",c);}

%%

int main()
{
	FILE *f;
	f=fopen("file","r");
	yyin=f;
	yylex();

}
