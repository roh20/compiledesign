%{
%}

%%

am|
is|
was|
are|
were|
has|
been|
might|
have|
been|
become { printf("%s verb",yytext); }



%%


int main()
{
	FILE *f;
	f = fopen("t1.txt","r");
	yyin = f;
	yylex();
	return 0;
	
}
