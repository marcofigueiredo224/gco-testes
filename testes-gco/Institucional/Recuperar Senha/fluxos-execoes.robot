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
#---------------------------------------------------------------------------------
Recuperar senha - Preenchimento incorreto do campo de email
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E clico em "Esqueceu a senha?"
  E preencho o e-mail de recuperação incorretamente
  Então uma mensagem de "Este campo deve ser um email válido." deverá ser exibida