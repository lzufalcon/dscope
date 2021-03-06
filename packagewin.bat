@echo off

echo Packaging...

IF "%1"=="" GOTO HAVE_0

rd /q /s windows
del /q dscopeqt-win.zip
md windows
rem %1\windeployqt.exe build-dscopeqt-Desktop_Qt_5_8_0_MinGW_32bit-Release\release\DScopeQT.exe --dir windows --force
%1\windeployqt.exe build-dscopeqt-Desktop_Qt_5_12_6_MinGW_64_bit-Release\release\DScopeQT.exe --dir windows --force

echo Copy binary

copy build-dscopeqt-Desktop_Qt_5_12_6_MinGW_64_bit-Release\release\DScopeQT.exe windows

echo Copy additional dlls

copy "%1\libstdc++-6.dll" windows
copy %1\libwinpthread-1.dll windows
rem copy %1\libgcc_s_dw2-1.dll windows
copy %1\libgcc_s_seh-1.dll windows


echo Zipping

cd windows
zip -r ..\dscopeqt-win.zip * -x *.svn*
cd..
zip -r dscopeqt-win.zip examples\* -x *.svn*

echo Packaging done

exit /b

:HAVE_0
echo Specify the path to qt. Example: %0 C:\Qt\5.8\mingw53_32\bin
