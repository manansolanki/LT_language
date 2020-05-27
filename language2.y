%{
#include<stdio.h> 
#include<math.h>
extern FILE *yyin;
#define PI 3.14
%} 
%union{
int integer;
float real;
}
%token <integer> NUMBER <real>	FLOAT
%token I want equivalent resistance where series parallel R1 R2 of and perimeter square length rectangle circle radius width the arc angle kinetic energy mass velocity pressure force area density volume power work time speed distance
%type <real> S E A C B D F G H J K
%%
//ResultExpression:S{printf("Your Answer is %f",$$);};
S: I want E{$$=$3;};

E: equivalent resistance of A   {$$=$4;}
   |perimeter of B        {$$=$3;}
   |arc length where D    {$$=$4;}
   |kinetic energy where F {$$=$4;}
   |pressure where G {$$=$3;}
   |density where H  {$$=$3;}
   |power where J    {$$=$3;}
   |speed where K  {$$=$3;}
   ;

A: series where R1 NUMBER and R2 NUMBER   {$$=$4+$7;printf("equivalent series resistance of %d and %d is %f\n",$4,$7,$$);}
   |parallel where R1 NUMBER and R2 NUMBER   {$$=(($4*$7)/($4+$7));printf("equivalent parallel resistance of %d and %d is %f\n",$4,$7,$$);}
   ;	

B: square where length NUMBER  {$$=4*$4;printf("Perimeter of square where length %d is %f\n",$4,$$);}
   |rectangle where C          {$$=$3;}
   |circle where radius NUMBER {$$=2*PI*$4;printf("Perimeter of circle where radius %d is %f\n",$4,$$);}
   ;

C: length NUMBER and width NUMBER   {$$=(2*($2+$5)); printf("Perimeter of rectangle where length %d and width %d is %f\n",$2,$5,$$);};

D: radius NUMBER and angle NUMBER   {$$=(($5/180)*PI*$2); printf("Arc length where radius %d and angle %d is %f\n",$2,$5,$$);};

F: mass NUMBER and velocity NUMBER   {$$=(0.5*$2*$5*$5); printf("kinetic energy where mass %d and velocity %d is %f\n",$2,$5,$$);};

G: force NUMBER and area NUMBER   {$$=$2/$5; printf("pressure where force %d and area %d is %f\n",$2,$5,$$);};

H: mass NUMBER and volume NUMBER   {$$=$2/$5; printf("density where mass %d and volume %d is %f\n",$2,$5,$$);}; 

J: work NUMBER and time NUMBER   {$$=$2/$5; printf("power where work %d and time %d is %f\n",$2,$5,$$);};

K: distance NUMBER and time NUMBER   {$$=$2/$5; printf("speed where distance %d and time %d is %f\n ",$2,$5,$$);};
														
%%
void yyerror(char *s){}
int main(int argc, char *argv[]) 
{
yyin=fopen(argv[1],"r");
int i;
for(i=1;i<=15;i++){
yyparse();
}
fclose(yyin);
return 0;
}