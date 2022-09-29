%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
extern int yylval;
%}

%%
" "                         ;
([0-9])+                    {return (NUM);}
"//"[^\n]*                  {return (COMMENT);}
";"                         {return (SEMICOLON);}
","                         {return (COLON);}
"("                         {return (LP);}
")"                         {return (RP);}
"["                         {return (LB);}
"]"                         {return (RB);}
"{"                         {return (LH);}
"}"                         {return (RH);}
"&"                         {return (AND);}
"|"                         {return (OR);}
"=="                        {return (EQEQ);}
"="                         {return (EQ);}
"!="                        {return (NOTEQ);}
"!"                         {return (NOT);}
"<="                        {return (SME);}
"<"                         {return (SM);}
">="                        {return (GRE);}
">"                         {return (GR);}
"+="                        {return (ADDEQ);}
"+"                         {return (ADD);}
"-="                        {return (SUBEQ);}
"-"                         {return (SUB);}
"*"                         {return (MUL);}
"/"                         {return (DIV);}
"%"                         {return (MOD);}
int                         {return (INT);}
void                        {return (VOID);}
bool                        {return (BOOL);}
if                          {return (IF);}
else                        {return (ELSE);}
while                       {return (WHILE);}
return                      {return (RETURN);}
break                       {return (BREAK);}
true                        {return (TRUE);}
false                       {return (FALSE);}
[a-zA-Z]([a-zA-Z]|[0-9])*   {return (ID);}
%%