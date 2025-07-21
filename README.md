# Compiler Design - LEX Programs

## 🔧 What is LEX?

LEX is a lexical analyzer generator used to identify tokens from an input stream. It is often used with YACC to design simple compilers and interpreters.


To run these LEX programs:

1. Make sure you have `lex` and `gcc` installed:
   ```bash
   sudo apt-get install flex gcc


   lex filename.l
gcc lex.yy.c -o output
./output
