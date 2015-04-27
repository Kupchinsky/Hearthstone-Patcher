@echo off
java -jar "%~dp0\dist\apktool.jar" d "%~1" -o "%~dp0\com.blizzard.wtcg.hearthstone"
pause