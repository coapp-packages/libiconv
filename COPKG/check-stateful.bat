@ECHO OFF
REM Simple check of a stateful encoding.
REM Usage: check-stateful.bat SRCDIR CHARSET

..\output\vc10\%1\Release\libiconvtest -f %3 -t UTF-8 < %2\%3-snippet > tmp-snippet
fc %2\%3-snippet.UTF-8 tmp-snippet
..\output\vc10\%1\Release\libiconvtest -f UTF-8 -t %3 < %2\%3-snippet.UTF-8 > tmp-snippet
fc %2\%3-snippet tmp-snippet
del tmp-snippet
