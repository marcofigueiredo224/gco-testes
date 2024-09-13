*** Settings ***
Library    SeleniumLibrary
# Library   ScreenCapLibrary
Resource    ../../shared/browser-setup.robot
Resource    ../../pages/config_cabeçalho.robot
Resource    ../../pages/config_recuperar-senha.robot
Resource    ../../pages/config_cadastro.robot
#Test Setup       Start Video Recording
Test Teardown    Close Browser


*** Test Cases ***
Recuperar senha - Envio de solicitação de recuperação
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E clico em "Esqueceu a senha?"
  E digito o e-mail para recuperação
  E clico em "Enviar"
  Então devo ser redirecionado para o login
  E uma mensagem de "E-mail enviado" deverá ser exibida
