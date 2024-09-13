*** Settings ***
Library    SeleniumLibrary
Resource    ../../shared/browser-setup.robot
Resource    ../../pages/config_cabeçalho.robot
Resource    ../../pages/config_login.robot
Task Teardown    Close Browser

*** Test Cases ***

Login - Login com e-mail inválido
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E preencho os campos E-mail com um formato inválido
  Então uma mensagem de "Este campo deve ser um email válido."
#-------------------------------------------------------------

Login - Login com senha incorreta
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E preencho o E-mail
  E preencho o campo "Senha" com uma senha incorreta
  Então uma mensagem de "O email/senha informados estão incorretos." deverá ser exibida
#-------------------------------------------------------------
Login - Campo e-mail obrigatório
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E Preencho a senha
  E clico em "Entrar"
  Então um mensagem de "Ocorreu um erro ao submeter o formulário!" deverá ser exibida
#-------------------------------------------------------------
Login - Campo senha obrigatório
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E Preencho o e-mail
  E clico em "Entrar"
  Então um mensagem de "Ocorreu um erro ao submeter o formulário!" deverá ser exibida
#--------------------------------------------------------------
