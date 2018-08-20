%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
[0-9]+"."[0-9]+ { printf("Float %s",yytext);
}
if|auto|while|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile { printf("keyword %s", yytext); }
[0-9]+ { printf("num %s", yytext); }
[a-z]+ { printf("aplha %s", yytext); }
[a-z]+[0-9]+|[0-9]+[a-z]+ { printf("alphanumeric %s",yytext); }
%%
int main()
{
	FILE *f;
	f=fopen("rohan.txt","r");
	yyin=f;
	yylex();
	return 0;
}
