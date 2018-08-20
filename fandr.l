%{
#include<stdio.h>
%}

%%
Rohan {printf("Kamlesh");}
%%

int main()
{	
	FILE *f;
	f=fopen("myfiloe.txt","r");
	yyin=f;
	yylex();
	return 0;
}
