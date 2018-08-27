%{

#include<math.h>
#include<stdlib.h>
int sum=0,c=0,i=0,n=0,temp=0,p=1,yylval;
%}

%%
-[0-9]+ {}
[0-9]+|"+"[0-9]+ {yylval=atoi(yytext);printf("%d",yylval);sum+=yylval;c++;}

%%


int main()
{
	FILE *f;
	f=fopen("no.txt","r");
	yyin=f;
	yylex();
	printf("Average:%d",sum/c);
	return 0;
}

