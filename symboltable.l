%{
#include<stdio.h>
#include"y.tab.h"
#include<string.h>
extern int yylval;
int i=0;
struct symbol
{
	char *id;
	char *type;
	int len;
}table[100];
%}

%%

([a-z]|[A-Z])([a-z]|[A-Z]|[0-9])* {
table[i].id=malloc(strlen(yytext+1));
strcpy(table[i].id,yytext);
table[i].type="identifier";
table[i].len=yyleng;

i++;
} 

  

%%

int main()
{
	
	FILE *f;
	f=fopen("identifier.txt","r");
	yyin=f;
	yylex();
	int j;
	printf("Name\t\ttype\tLength\n");
	for(j=0;j<i;j++)
	{
		printf("%s\t%s\t%d\n",table[j].id,table[j].type,table[j].len);

	}
	return 0;
}
