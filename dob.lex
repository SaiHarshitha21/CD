%{
#include <stdio.h>
%}
%%
[0-9]{1,2}-[0-9]{1,2}-[0-9]{4} { printf("Valid date of birth\n"); }
.+ { printf("Invalid date of birth\n"); }

%%
int yywrap(void){}
int main() {
yylex();
return 0;
}
**********************************************************************************************************
Output:
C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\harsh>flex dob.l.txt
C:\Users\harsh>set path=C:\MinGW\bin
C:\Users\harsh>gcc lex.yy.c
C:\Users\harsh>a
enter:21-02-2004
valid date of birth
enter:21-17-2900
invalid date of birth
