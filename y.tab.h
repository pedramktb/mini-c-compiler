
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ID = 258,
     NUM = 259,
     COMMENT = 260,
     SEMICOLON = 261,
     COLON = 262,
     LP = 263,
     RP = 264,
     LB = 265,
     RB = 266,
     LH = 267,
     RH = 268,
     AND = 269,
     OR = 270,
     EQEQ = 271,
     EQ = 272,
     NOTEQ = 273,
     NOT = 274,
     SME = 275,
     GRE = 276,
     SM = 277,
     GR = 278,
     ADDEQ = 279,
     ADD = 280,
     SUBEQ = 281,
     SUB = 282,
     MUL = 283,
     DIV = 284,
     MOD = 285,
     UNDERSCORE = 286,
     INT = 287,
     VOID = 288,
     BOOL = 289,
     IF = 290,
     ELSE = 291,
     WHILE = 292,
     RETURN = 293,
     BREAK = 294,
     TRUE = 295,
     FALSE = 296
   };
#endif
/* Tokens.  */
#define ID 258
#define NUM 259
#define COMMENT 260
#define SEMICOLON 261
#define COLON 262
#define LP 263
#define RP 264
#define LB 265
#define RB 266
#define LH 267
#define RH 268
#define AND 269
#define OR 270
#define EQEQ 271
#define EQ 272
#define NOTEQ 273
#define NOT 274
#define SME 275
#define GRE 276
#define SM 277
#define GR 278
#define ADDEQ 279
#define ADD 280
#define SUBEQ 281
#define SUB 282
#define MUL 283
#define DIV 284
#define MOD 285
#define UNDERSCORE 286
#define INT 287
#define VOID 288
#define BOOL 289
#define IF 290
#define ELSE 291
#define WHILE 292
#define RETURN 293
#define BREAK 294
#define TRUE 295
#define FALSE 296




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


