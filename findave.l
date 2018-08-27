%{
#include<math.h>
#include<stdlib.h>
int sum=0,c=0,i=0,n=0,temp=0,p=1;
%}

%%
-[0-9]+ {}
[0-9]+ {printf("leng:%d\n",yyleng);for(i=0;i<yyleng;i++){p*=10;}for(i=0;i<yyleng;i++)
	{
		printf("%d   iluij  ",p);
		temp+= p* yytext[i]-'0';
		printf("Temp is:%d\n",temp);
		p/=10;
			
	}
	}
%%

int main()
{
	FILE *f;
	f=fopen("no.txt","r");
	yyin=f;
	yylex();
	printf("Sum:%d",sum/c);
	return 0;
}
