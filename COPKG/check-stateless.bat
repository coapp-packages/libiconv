@ECHO OFF
REM Complete check of a stateless encoding.
REM Usage: check-stateless.bat SRCDIR CHARSET

..\output\vc10\%1\Release\table-from %3 > tmp-%3.TXT
..\output\vc10\%1\Release\table-to %3 | sort > tmp-%3.INVERSE.TXT
fc %2\%3.TXT tmp-%3.TXT

if not exist %2\%3.IRREVERSIBLE.TXT goto ELSE_1
  copy /a %2\%3.TXT /a + %2\%3.IRREVERSIBLE.TXT /a tmp
  sort < tmp | ..\output\vc10\%1\Release\uniq-u > tmp-orig-%3.INVERSE.TXT
  fc tmp-orig-%3.INVERSE.TXT tmp-%3.INVERSE.TXT
  del tmp
  del tmp-orig-%3.INVERSE.TXT
  goto ENDIF_1
:ELSE_1
  fc %2\%3.TXT tmp-%3.INVERSE.TXT
:ENDIF_1

del tmp-%3.TXT
del tmp-%3.INVERSE.TXT
