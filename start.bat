@echo off
node.exe .\node_modules\babel-cli\bin\babel.js --plugins inline-json,..\babel\config-plugin.js lib\filter\*.js --out-dir public\
del public\*.js
move public\lib\filter\* public
rd /s /q public\lib
node.exe bin/app.js
pause
