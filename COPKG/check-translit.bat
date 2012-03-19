@ECHO OFF
REM Simple check of transliteration facilities.
REM Usage: check-translit.bat SRCDIR FILE FROMCODE TOCODE

..\output\vc10\%1\Release\libiconvtest -f %4 -t %5//TRANSLIT < %2\%3.%4 > tmp
fc %2\%3.%5 tmp
del tmp
