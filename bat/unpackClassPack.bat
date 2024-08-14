@echo off
setlocal enabledelayedexpansion
call fvtt package workon "dnd5e_classpack" --type "Module"
set "baseDir=C:\Users\Couga\AppData\Local\FoundryVTT\Data\modules\dnd5e_classpack\packs"

for /d %%D in ("%baseDir%\*") do (
    set "folderName=%%~nxD"
    call fvtt package unpack "!folderName!"
)

endlocal
