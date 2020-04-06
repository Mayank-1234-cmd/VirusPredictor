:: Virus Predictor 1.0
@echo off
color F0
title Virus Predictor 1.0 
mode 475
cls
:nt1
cls
echo COVID-19 is spreading.
set /p vsn=Virus Stimulation Name:
set /p Initial_Population=Initial Population:
set /p infectantsperday=People Infected Per day:
set /p deathrec=Recover from death Rate:
set /p recoverrate=Recovery Rate:
set /p inaffectable=Inaffectable:
set /p curepercentadv=Cure percent adv. per day:
set /p initialinfectants=Initial Infectaants:
set /p init_deaths=Initial Deaths:
set /p init_cure=Initial Cure percent made:
set /p death_per_day=Deaths per day:
echo This text is required for this file to function properly > %CD%\viruses_tests\%vsn%.txt
:: set 1=2
:: not set 1 = 2
echo First:
set day=0
set infectants=%initialinfectants%
echo Infectants: %initialinfectants%
set deaths=%init_deaths%
echo Deaths: %init_deaths%
set cure=%curepercentadv%
echo Cure percent made: %curepercentadv%
pause
cls
: nxt
set /a day=%day%+1

set /a infectants=%infectants%+%infectantsperday%/%recoverrate%

set /a deaths=%deaths%+%death_per_day%/%deathrec%

set /a cure=%cure%+%curepercentadv%

set /a inf=%Initial_Population%-%inaffectable%
echo By Mayank, user is %username%
echo Day %day% of surviving %vsn% 
echo Virus Stimulation Name: %vsn%
echo Affectable People: %inf%
echo Infectants: %infectants%
echo Deaths: %deaths%
echo Cure percent made: %cure%
:: create file
:startofcreatefile
set tmpvar=12
echo %vsn% >> %vsn%.txt
echo Day %day% of surviving %vsn%  >> %CD%\viruses_tests\%vsn%.txt
echo There are %inf% affectable people >> %CD%\viruses_tests\%vsn%.txt
echo There are %infectants% infectants >> %CD%\viruses_tests\%vsn%.txt
echo There are %deaths% deaths >> %CD%\viruses_tests\%vsn%.txt
echo Cure is %cure% percent made >> %CD%\viruses_tests\%vsn%.txt

pause
cls
goto nxt
