@if (@a==@b) @end /*

@echo off
setlocal

for /f "delims=" %%I in ('cscript /nologo /e:jscript "%~f0"') do (
    set FLDR=%%I
)
if "%FLDR%"=="" (exit)

rd /q /s "%FLDR%\Data\Core\Languages\German (Deutsch)"
rd /q /s "%FLDR%\Data\Royalty\Languages\German (Deutsch)"
rd /q /s "%FLDR%\Data\Ideology\Languages\German (Deutsch)"
rd /q /s "%FLDR%\Data\Biotech\Languages\German (Deutsch)"
rd /q /s "%FLDR%\Data\Anomaly\Languages\German (Deutsch)"
rd /q /s "%FLDR%\Data\Odyssey\Languages\German (Deutsch)"

xcopy /s /i "Core" "%FLDR%\Data\Core\Languages\German (Deutsch)"
xcopy /s /i "Royalty" "%FLDR%\Data\Royalty\Languages\German (Deutsch)"
xcopy /s /i "Ideology" "%FLDR%\Data\Ideology\Languages\German (Deutsch)"
xcopy /s /i "Biotech" "%FLDR%\Data\Biotech\Languages\German (Deutsch)"
xcopy /s /i "Anomaly" "%FLDR%\Data\Anomaly\Languages\German (Deutsch)"
xcopy /s /i "Odyssey" "%FLDR%\Data\Odyssey\Languages\German (Deutsch)"

del "%FLDR%\Data\Core\Languages\German (Deutsch).tar"
del "%FLDR%\Data\Royalty\Languages\German (Deutsch).tar"
del "%FLDR%\Data\Ideology\Languages\German (Deutsch).tar"
del "%FLDR%\Data\Biotech\Languages\German (Deutsch).tar"
del "%FLDR%\Data\Anomaly\Languages\German (Deutsch).tar"
del "%FLDR%\Data\Odyssey\Languages\German (Deutsch).tar"

goto :EOF

:: JScript portion */

var shl = new ActiveXObject("Shell.Application");
var folder = shl.BrowseForFolder(0, "Wähle den RimWorld-Ordner aus. Standardmäßig:\nC:\\Programme (x86)\\Steam\\steamapps\\common\\RimWorld", 0, 0x11);
WSH.Echo(folder ? folder.self.path : '');