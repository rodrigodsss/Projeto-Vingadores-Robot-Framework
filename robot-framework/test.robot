*** Settings ***
Library  app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=        Welcome    Rodrigo
    Should Be Equal   ${result}  Olá Rodrigo, Bem vindo ao Curso básico de Robot Framework! 