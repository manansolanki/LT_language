
%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+  {
		yylval.integer=atoi(yytext);
		return NUMBER;
		}

[0-9]*\.[0-9]+ {
		yylval.real=(float)atof(yytext); 
		return FLOAT;
		}
I   {return I;}
want   {return want;}
resistance   {return resistance;}
series   {return series;}
parallel   {return parallel;}
of   {return of;}
where   {return where;}
equivalent {return equivalent;}
R1 {return R1;}
R2 {return R2;}
and {return and;}
perimeter     {return perimeter;}
circle		{return circle;}
rectangle    {return rectangle;}
square	   {return square;}
length    {return length;}
radius   {return radius;}
width   {return width;}
the     {return the;}
arc     {return arc;}
angle   {return angle;}
kinetic {return kinetic;}
energy  {return energy;}
mass    {return mass;}
velocity {return velocity;}
pressure {return pressure;}
force {return force;}
area  {return area;}
density {return density;}
volume {return volume;}
power {return power;}
work {return work;}
time {return time;}
speed {return speed;}
distance {return distance;}

[\n]	{return yytext;}
[/t]	;
%%
int yywrap(){return 1;}