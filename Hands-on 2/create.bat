@echo off
echo Hola Mundo > mytext.txt
pause
type "mytext.txt"
pause
mkdir  backup
pause
copy "mytext.txt"  "backup"
pause
dir "backup"
pause
del "backup\mytext.txt"
pause
rmdir backup