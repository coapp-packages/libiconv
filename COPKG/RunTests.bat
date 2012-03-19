echo Starting %1 tests...
set tmp_err=0
REM Start tests
	call .\check-stateless %1 ..\tests ASCII
    set /a tmp_err+=%ERRORLEVEL%
REM General multi-byte encodings
	call .\check-stateful %1 ..\tests UCS-2BE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UCS-2LE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UCS-4BE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UCS-4LE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-16
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-16BE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-16LE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-32
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-32BE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-32LE
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests UTF-7
    set /a tmp_err+=%ERRORLEVEL%
REM 8-bit encodings
	call .\check-stateless %1 ..\tests ISO-8859-1
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-2
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-3
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-4
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-5
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-6
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-7
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-8
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-9
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-10
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-11
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-13
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-14
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-15
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-8859-16
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests KOI8-R
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests KOI8-U
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests KOI8-RU
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1250
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1251
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1252
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1253
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1254
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1255
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests CP1255
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1256
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1257
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1258
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests CP1258
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP850
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP862
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP866
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1131
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacRoman
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacCentralEurope
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacIceland
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacCroatian
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacRomania
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacCyrillic
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacUkraine
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacGreek
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacTurkish
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacHebrew
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacArabic
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MacThai
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests HP-ROMAN8
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests NEXTSTEP
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ARMSCII-8
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests Georgian-Academy
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests Georgian-PS
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests KOI8-T
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests PT154
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests RK1048
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests MuleLao-1
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP1133
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests TIS-620
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP874
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests VISCII
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests TCVN
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests TCVN
    set /a tmp_err+=%ERRORLEVEL%
REM CJK character sets
	call .\check-stateless %1 ..\tests ISO646-JP
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests JIS_X0201
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO646-CN
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests ISO-IR-165
    set /a tmp_err+=%ERRORLEVEL%
REM CJK encodings
	call .\check-stateless %1 ..\tests EUC-JP
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests SHIFT_JIS
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP932
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-JP
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-JP-2
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-JP-1
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests EUC-CN
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests GBK
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP936
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-CN
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-CN-EXT
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests HZ
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests EUC-TW
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests BIG5
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP950
    set /a tmp_err+=%ERRORLEVEL%
REM skipping these because windows chokes when trying to grab the files
REM	call .\check-stateless %1 ..\tests BIG5-HKSCS:1999
REM	call .\check-stateful %1 ..\tests BIG5-HKSCS:1999
REM	call .\check-stateless %1 ..\tests BIG5-HKSCS:2001
REM	call .\check-stateful %1 ..\tests BIG5-HKSCS:2001
REM	call .\check-stateless %1 ..\tests BIG5-HKSCS:2004
REM	call .\check-stateful %1 ..\tests BIG5-HKSCS:2004
	call .\check-stateless %1 ..\tests EUC-KR
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests CP949
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateless %1 ..\tests JOHAB
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-stateful %1 ..\tests ISO-2022-KR
    set /a tmp_err+=%ERRORLEVEL%
REM transliteration
	call .\check-translit %1 ..\tests Quotes UTF-8 ISO-8859-1
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-translit %1 ..\tests Quotes UTF-8 ASCII
    set /a tmp_err+=%ERRORLEVEL%
	call .\check-translit %1 ..\tests Translit1 ISO-8859-1 ASCII
    set /a tmp_err+=%ERRORLEVEL%
exit /b %tmp_err%