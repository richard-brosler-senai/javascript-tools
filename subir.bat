@echo off
chcp 65001
REM Batch de apoio aos Alunos do curso Desenvolvimento em Javascript - Senai Bauru
REM Author: Richard Brosler
REM Version: 2025-08-15
set turma=m25-javascript-02
set dirgit=%APPDATA%\..\Local\Programs\Git
set /p comentario=Digite o comentário para fechar a versão de dados: 
cd %USERPROFILE%\Documents\%turma%\
echo Adicionando arquivos à versão...
"%dirgit%\bin\git.exe" add .
echo Fechando a versão...
"%dirgit%\bin\git.exe" commit -m "%comentario%"
echo Enviando para o servidor do GitHub...
echo Atenção à autenticação, será solicitado...
"%dirgit%\bin\git.exe" push
pause