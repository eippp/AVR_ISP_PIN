set last_edit=2014-06-22
set myname=XIAOLABA
set myemail=xiao_laba_cn@yahoo.com
set ccemail=xiao_laba_cn@yahoo.com



set OUTPUT_HTML=README.html
set OUTPUT_GITHUB_README=README.md

setlocal enabledelayedexpansion



echo # AVR_ISP_PIN   > %OUTPUT_GITHUB_README%
echo AVR MCU, ISP pin# table, easy design aid   >> %OUTPUT_GITHUB_README%
echo by xiaolaba, last edit %last_edit%   >> %OUTPUT_GITHUB_README%
echo.     >> %OUTPUT_GITHUB_README%
echo.     >> %OUTPUT_GITHUB_README%

for /R ./PNG/ %%G in (*.PNG) do (
	set "FILENAME=%%~nG"  REM default extension change to .bdf
	::set "EXT_BDF=PNG"  REM default extension change to .png
	::set "BOOKY_EXT=txt"  REM default extension change to .txt
    ::echo ^<li^>^<a href="http://link-to-file.com/!relfolder!/!FILENAME!%%~xb"^>%%~nb^</a^>^</li^>
	:::::: this file name only, removed local path string
    echo [ %FILENAME%%%~nG%%~xG ]^( PNG/%FILENAME%%%~nG%%~xG ^)  
    echo ^^![ PNG/%FILENAME%%%~nG%%~xG ]^( PNG/%FILENAME%%%~nG%%~xG ^)   
	:: blank line, 2 spaces, github line break
	echo.    
) >> %OUTPUT_GITHUB_README%


REM goto exit
