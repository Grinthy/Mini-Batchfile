@echo off
set cheat=0
title Text Adventure
echo Welcome to Ryan's Text Adventure!
pause
goto MapMenu
rem menus

:MapMenu
cls
title Map Selection
echo -Choose a map-
echo 1: Cave Adventure
echo 2: Airport Adventure
echo -Options-
echo 3: Exit 
echo 4: Cheat Toggle
echo 5: Map Toggle
echo 6: Colorblind Toggle
echo -Misc-
echo 7: Credits
echo 8: Help Menu [In Progress]
if %cheat% == 1 echo Cheating has been enabled. To deactivate, go into the cheat menu and disable.
set /p choice=

if %choice% == 1 goto CaveHome
if %choice% == 2 goto AirportHome
if %choice% == 3 exit
if %choice% == 4 goto Cheat
if %choice% == 5 goto Map
if %choice% == 6 goto Colorblind
if %choice% == 7 goto Credits

:Map
cls
echo 1: Turn Map On
echo 2: Turn Map Off
echo b: Back
set /p choice=

if %choice% == 1 goto MapOn
if %choice% == 2 goto MapOff
if %choice% == 3 goto MapMenu

:MapOn
set map=1
goto MapMenu

:MapOff
set map=0
goto MapMenu

:Cheat
cls
echo 1: Turn on Cheats
echo 2: Turn off Cheats
echo b: Back
set /p choice=

if %choice% == 1 goto CheatOn
if %choice% == 2 goto CheatOff
if %choice% == b goto MapMenu

:CheatOn
set cheat=1
goto MapMenu

:CheatOff
set cheat=0
goto MapMenu

:Colorblind
cls
echo 1: Turn on Colorblind Mode
echo 2: Turn off Colorblind Mode
echo b: Back
set /p choice=

if %choice% == 1 goto CBon
if %choice% == 2 goto CBoff
if %choice% == b goto MapMenu

:CBon
color f0
goto MapMenu

:CBoff
color 0a
goto MapMenu

:Credits
cls
echo -Credits-
echo Job/Git Name/Git @mention
echo Code: Ryan @Grinthy
echo Made with <3 with GitHub
echo Also check out the HTML-OS!
pause
goto MapMenu

:CaveHome
cls
echo -Choose a Diffuclity-
title Diffuclity Selection - Cave Adventure
echo 1: Easy - 3x3
echo 2: Normal - 5x5
echo b: Back
set /p choice=

if %choice% == 1 goto CaveEasy
if %choice% == 2 goto CaveNormal
if %choice% == b goto MapMenu

:CaveEasy
title Cave Advnture - Easy
cls
echo 1: Level 1
echo 2: Level 2
set /p choice=

if %choice% == 1 goto C11x0y0
if %choice% == 2 goto C12x0y0

:CaveNormal
title Cave Adventure - Normal

:AirportHome
cls
echo -Choose a Diffuclity-
echo 1: Easy - 3x3
echo 2: Normal - 5x5
set /p choice=

if %choice% == 1 goto AirportEasy
if %choice% == 2 goto AirportNormal

:AirportEasy

:AirportNormal

:LevelWin
cls
echo You won the level! 
ping localhost -n 5 >nul
goto MapMenu

rem Begin level code - Cave

:C11x0y0
cls
set req-items=1
title Level C11x0y0
echo -Info-
echo Coordantes: x0, y0
echo No Tresaure
if %cheat% == 1 echo CHEAT gem x1 y0 exit x-1 y1
echo -Keys-
echo a - move left
echo s - move backwards
echo w - move forwards
echo d - move right
echo -Map-
O  O  O
O  X  O
O  O  O
set /p direction=

if %direction% == a goto C11x-1y0
if %direction% == s goto C11x0y-1
if %direction% == w goto C11x0y1
if %direction% == d goto C11x1y0

:C11x-1y0
cls
title Level C11x-1y0
echo -Info-
echo Coordantes: x-1, y0
echo No Tresaure
echo -Keys-
echo s - move backwards
echo w - move forwards
echo d - move right
echo -Map-
echo O  O  O
echo X  O  O
echo O  O  O 
set /p direction=

if %direction% == a goto C11x-1y0
if %direction% == s goto C11x-1y-1
if %direction% == w goto C11x-1y1
if %direction% == d goto C11x0y0

:C11x-1y1
cls
title Level C11x-1y1
echo -Info-
echo Coordantes: x-1, y1
echo No Treasure
echo -Keys-
echo s - move backwards
echo d - move right
echo -Map-
echo X  O  O
echo O  O  O
echo O  O  O
set /p direction=

if %direction% == w goto C11x-1y1
if %direction% == a goto C11x-1y1
if %direction% == s goto C11x-1y0
if %direction% == d goto C11x0y1

:C11x0y1
cls
title Level C11x0y1
echo -Info-
echo Coordantes: x0, y1
echo No Tresaure
echo -Keys-
echo a - move left
echo s - move backwards
echo d - move right
echo -Map-
echo O  X  O
echo O  O  O
echo O  O  O
set /p direction=


if %direction% == a goto C11x-1y1
if %direction% == s goto C11x0y0
if %direction% == d goto C11x1y1
if %direction% == w goto C11x0y1

:C11x1y1
cls
title Level C11x1y1
echo -Info-
echo Coordantes: x1, y1
echo No Tresaure
echo -Keys-
echo a - move left
echo s - move backwards
echo -Map-
echo O  O  X
echo O  O  O
echo O  O  O
set /p direction=

if %direction% == a goto C11x0y1
if %direction% == s goto C11x1y0
if %direction% == w goto C11x1y1
if %direction% == d goto C11x1y1

:C11x1y0
cls
title Level C11x1y0
echo -Info-
echo Coordantes: x1, y0
echo No Tresaure
echo -Keys-
echo a - move left
echo s - move backwards
echo w - move forwards
set /p direction=

if %direction% == a goto C11x0y0
if %direction% == s goto C11x1y-1
if %direction% == w goto C11x1y1
if %direction% == d goto C11x1y0

:C11x1y-1
cls
title Level C11x1y-1
echo -Info-
echo Coordantes: x1, y-1
echo -Keys-
echo a - move left
echo w - move forwards
set /p direction=

if %direction% == a goto C11x0y0
if %direction% == w goto C11x1y1
if %direction% == d goto C11x1y-1
if %direction% == s goto C11x1y-1

:C11x0y-1
cls
title Level C11x0y-1
echo -Info-
echo Coordantes: x0, y-1
echo No Tresaure
echo -Keys-
echo a - move left
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == a goto C11x-1y-1
if %direction% == w goto C11x0y0
if %direction% == d goto C11x1y-1
if %direction% == s goto C11x0y-1

:C11x-1y-1
cls
title Level C11x-1y-1
echo -Info-
echo Coordantes: x-1, y-1
echo No Tresaure
echo -Keys-
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == w goto C11x-1y0
if %direction% == d goto C11x0y-1
if %direction% == s goto C11x-1y-1
if %direction% == a goto C11x-1y-1


rem Cave Easy Level 2

:C12x0y0
cls
set req-items=1
title Level C12x0y0
echo -Info-
echo Coordantes: x0, y0
echo No Tresaure
if %cheat% == 1 echo CHEAT gem x-1 y1 exit x1 y-1
echo -Keys-
echo a - move left
echo s - move backwards
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == a goto C12x-1y0
if %direction% == s goto C12x0y-1
if %direction% == w goto C12x0y1
if %direction% == d goto C12x1y0

:C12x-1y0
cls
title Level C12x-1y0
echo -Info-
echo Coordantes: x-1, y0
echo No Tresaure
echo -Keys-
echo s - move backwards
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == s goto C12x-1y-1
if %direction% == w goto C12x-1y1
if %direction% == d goto C12x0y0
if %direction% == a goto C12x-1y0

:C12x-1y1
cls
title Level C12x-1y1
echo -Info-
echo Coordantes: x-1, y1
goto LevelWin
echo -Keys-
echo s - move backwards
echo d - move right
set /p direction=

if %direction% == s goto C12x-1y0
if %direction% == d goto C12x0y1
if %direction% == a goto C12x-1y1
if %direction% == w goto C12x-1y1
set gem=1

:C12x0y1
cls
title Level C12x0y1
echo -Info-
echo Coordantes: x0, y1
echo No Tresaure
echo -Keys-
echo a - move left
echo s - move backwards
echo d - move right
set /p direction=

if %direction% == a goto C12x-1y1
if %direction% == s goto C12x0y0
if %direction% == d goto C12x1y1
if %direction% == w goto C12x0y1

:C12x1y1
cls
title Level C12x1y1
echo -Info-
echo Coordantes: x1, y1
echo No Tresaure
echo -Keys-
echo a - move left
echo s - move backwards
set /p direction=

if %direction% == a goto C12x0y1
if %direction% == s goto C12x1y0
if %direction% == d goto C12x1y0
if %direction% == w goto C12x1y0

:C12x1y0
cls
title Level C12x1y0
echo -Info-
echo Coordantes: x1, y0
echo Tresaure Found
echo -Keys-
echo a - move left
echo s - move backwards
echo w - move forwards
set /p direction=

if %direction% == a goto C12x0y0 
if %direction% == s goto C12x1y-1
if %direction% == w goto C12x1y1
if %direction% == d goto C12x1y0
set gems=1

:C12x1y-1
cls
title Level C12x1y-1
echo -Info-
echo Coordantes: x1, y-1
goto LevelWin
echo -Keys-
echo a - move left
echo w - move forwards
set /p direction=

if %direction% == a goto C12x0y0
if %direction% == w goto C12x1y1

:C12x0y-1
cls
title Level C12x0y-1
echo -Info-
echo Coordantes: x0, y-1
echo No Tresaure
echo -Keys-
echo a - move left
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == a goto C12x-1y-1
if %direction% == w goto C12x0y0
if %direction% == d goto C12x1y-1
if %direction% == s goto C12x0y-1

:C12x-1y-1
cls
title Level C12x-1y-1
echo -Info-
echo Coordantes: x-1, y-1
echo No Tresaure
echo -Keys-
echo w - move forwards
echo d - move right
set /p direction=

if %direction% == w goto C12x-1y0
if %direction% == d goto C12x0y-1
if %direction% == s goto C12x-1y-1
if %direction% == a goto C12x-1y-1
