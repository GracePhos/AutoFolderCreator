@echo off
setlocal enabledelayedexpansion

set /p "baseName=Enter the base name for the main folders: "
set /p "count=Enter the number of folders to create: "
set /p "subCount=Enter the number of subfolders to create inside each folder: "
echo Enter the names for the subfolders (separate them with a space):
set /p "subFolders="

set "path=%cd%"

for /L %%i in (1,1,%count%) do (
    mkdir "%path%\%baseName%%%i"
    set "subFolderList=!subFolders!"
    for %%j in (!subFolderList!) do (
        mkdir "%path%\%baseName%%%i\%%j"
    )
)

echo Folders and subfolders created successfully.
pause
