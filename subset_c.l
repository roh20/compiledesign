%{
#include<stdio.h>

%}

%%
"++"|"--"|"*"|"+"|"-"|"%"|"="|"!"|"!=" {printf("Operators: %s ",yytext);}
if|auto|while|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile { printf("\nkeyword %s", yytext); }
#include"<"[a-z]+.[a-z]">" {printf("Preprocessor");}
[[a-z|A-Z]+[0-9]*]+ {printf("\nIdentifier : %s",yytext);} 

"//".* {printf("Single line Comment");}
[0-9]+"."[0-9]+ { printf("\nFloat Constant%s",yytext);}

[0-9]+ { printf("\nnum Constant %s", yytext); }
[a-z]+ { printf("\nString Constant %s", yytext); }
"#"|","|";"|"{"|"}" {printf("\nDelimiters %s",yytext);}

"/*"(.|\n)*"*/" {printf("Multi line comment");}

%%


int main()
{
	FILE *f;
	f=fopen("hello.c","r");
	yyin= f;
	yylex();
}
