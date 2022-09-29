%start program
%token ID NUM COMMENT SEMICOLON COLON LP RP LB RB LH RH AND OR EQEQ EQ NOTEQ NOT SME GRE SM GR ADDEQ ADD SUBEQ SUB MUL DIV MOD UNDERSCORE INT VOID BOOL IF ELSE WHILE RETURN BREAK TRUE FALSE

%%
program : declarationList;
declarationList : declarationList declaration | declaration;
declaration : varDeclaration | funDeclaration | COMMENT;
varDeclaration : typeSpecifier varDeclList SEMICOLON ;
varDeclList : varDeclList COLON varDeclId | varDeclId;
varDeclId : ID | ID LB NUM RB;
typeSpecifier : INT | VOID | BOOL;
funDeclaration : typeSpecifier ID LP params RP statement ;
params : paramList | ;
paramList : paramList SEMICOLON paramTypeList | paramTypeList;
paramTypeList : typeSpecifier paramIdList;
paramIdList : paramIdList COLON paramId | paramId;
paramId : ID | ID LB RB;
compoundStmt : LH localDeclarations statementList RH;
localDeclarations : localDeclarations varDeclaration | ;
statementList : statementList statement | ;
statement : expressionStmt | compoundStmt | selectionStmt | iterationStmt | returnStmt | breakStmt;
expressionStmt : expression SEMICOLON | SEMICOLON;
selectionStmt : IF LP expression RP statement | IF LP expression RP statement ELSE statement;
iterationStmt : WHILE LP expression RP statement;
returnStmt : RETURN SEMICOLON | RETURN expression SEMICOLON;
breakStmt : BREAK SEMICOLON;
expression : var EQ expression | var ADDEQ expression | var SUBEQ expression | simpleExpression;
var : ID | ID LB expression RB;
simpleExpression : simpleExpression OR orExpression | orExpression;
orExpression : orExpression AND unaryRelExpression | unaryRelExpression;
unaryRelExpression : NOT unaryRelExpression | relExpression;
relExpression : addExpression relop addExpression | addExpression;
relop : SME | SM | GR | GRE | EQEQ | NOT EQ;
addExpression : addExpression addop term | term;
addop : ADD | SUB;
term : term mulop unaryExpression | unaryExpression;
mulop : MUL | DIV | MOD;
unaryExpression : SUB unaryExpression | factor;
factor : LP expression RP | var | call | constant;
constant : NUM | TRUE | FALSE;
call : ID LP args RP;
args : argList | ;
argList : argList COLON expression | expression;
%%

#include <stdio.h>

int main(char *arg[]){
  return yyparse();
}

int yyerror(char const * err){
  printf("%s\n", err);
}

int yywrap(){
  return(1);
}