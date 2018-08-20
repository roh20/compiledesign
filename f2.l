%{
#include<stdio.h>
int count=0,sent=0,lines=0,tabs=0;
%}

%%
["\t"] {tabs++;}
["\n"] {lines++;}
[" "]|["\t"] {count++;}
["."] {count++;sent++;}	
%%

int main()
{
	FILE *f;
	f=fopen("myfiloe.txt","r");
	yyin=f;
	yylex();
	printf("No of words are :%d\nSentences:%d\nLines:%d\nTabs:%d",count,sent,lines,tabs);
	return 0;
}
