%{
	#include<string.h>
	char *fi="rohan";
	FILE *f;
	
%}


%%
[a-z]+ {FILE *s;s=fopen("t2.txt","w");if(strcmp(fi,yytext)==0){fprintf(s,"%s","Kamlesh");}}
%%

int main()
{
	
	f=fopen("t2.txt","r");
	yyin=f;
	yylex();
	return 0;
}
