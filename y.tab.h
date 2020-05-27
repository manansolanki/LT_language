
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
     NUMBER = 258,
     FLOAT = 259,
     I = 260,
     want = 261,
     equivalent = 262,
     resistance = 263,
     where = 264,
     series = 265,
     parallel = 266,
     R1 = 267,
     R2 = 268,
     of = 269,
     and = 270,
     perimeter = 271,
     square = 272,
     length = 273,
     rectangle = 274,
     circle = 275,
     radius = 276,
     width = 277,
     the = 278,
     arc = 279,
     angle = 280,
     kinetic = 281,
     energy = 282,
     mass = 283,
     velocity = 284,
     pressure = 285,
     force = 286,
     area = 287,
     density = 288,
     volume = 289,
     power = 290,
     work = 291,
     time = 292,
     speed = 293,
     distance = 294
   };
#endif
/* Tokens.  */
#define NUMBER 258
#define FLOAT 259
#define I 260
#define want 261
#define equivalent 262
#define resistance 263
#define where 264
#define series 265
#define parallel 266
#define R1 267
#define R2 268
#define of 269
#define and 270
#define perimeter 271
#define square 272
#define length 273
#define rectangle 274
#define circle 275
#define radius 276
#define width 277
#define the 278
#define arc 279
#define angle 280
#define kinetic 281
#define energy 282
#define mass 283
#define velocity 284
#define pressure 285
#define force 286
#define area 287
#define density 288
#define volume 289
#define power 290
#define work 291
#define time 292
#define speed 293
#define distance 294




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 7 "language2.y"

int integer;
float real;



/* Line 1676 of yacc.c  */
#line 137 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


