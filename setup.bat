@echo off

cd %~dp0

cd data
powershell -Command "Invoke-WebRequest https://fox-gieg.com/patches/github/n1ckfg/doodle-place-1/data/sqlite.db.zip -OutFile sqlite.db.zip"
powershell Expand-Archive sqlite.db.zip -DestinationPath .
del sqlite.db.zip

@pause