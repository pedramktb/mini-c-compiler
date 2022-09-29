@echo off
title Compiler
flex Lexer.l
bison -dy Parser.y
gcc lex.yy.c y.tab.c -o Compiler.exe
pause