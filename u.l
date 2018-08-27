%{
%}

%%
[a-z] { printf("%c",yytext[0]-32); }
[A-Z] { printf("%c",yytext[0]+32); }

%%

int main()
{
	FILE *f;
	f=fopen("t1.txt","r");
	yyin = f;
	yylex();
	return 0;
	
}
