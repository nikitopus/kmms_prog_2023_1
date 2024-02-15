@echo off
setlocal EnableDelayedExpansion

set BUILD_TYPE = Ninja
set BUILD_SUFFIX = ninja

chcp 65001

set BUILD_FOLDER = build_%BUILD_SUFFIX%
set SOURCE_FOLDER = projects

if not exist %BUILD_FOLDER% mkdir %BUILD_FOLDER%

cd %BUILD_FOLDER%

cmake -G %BUILD_TYPE% ..\%SOURCE_FOLDER%
cmake --build .

set arr[0].file=run_refactoring.bat
set arr[1].file=run_smartSort.bat
set arr[2].file=run_obuchaika.bat

set arr[0].folder=refactoring.bat
set arr[1].folder=smartSort.bat
set arr[2].folder=obuchaika.bat

for /L %%i in (0,1,5) do (
	copy ..\%SOURCE_FOLDER%\!arr[%%i].folder!\!arr[%%i].file! .\!arr[%%i].folder!
)

copy ..\run_tests.bat .
