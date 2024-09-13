*** Settings ***
Library          SeleniumLibrary
#Library          ScreenCapLibrary
Resource         ../../shared/browser-setup.robot
Resource         ../../pages/config_cabeçalho.robot
Resource         ../../pages/config_cadastro.robot
#Test Setup       Start Video Recording     
Test Teardown    Finish Session

*** Test Cases ***
Cadastro - Campo Celular em branco
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho os campos de cadastro menos "Celular"
  E clico em salvar
  Então uma mensagem de "Este campo é obrigatório." deverá ser exibida
#--------------------------------------------------------
Cadastro - Campo E-mail em branco
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho os campos de cadastro menos "E-mail"
  E clico em salvar
  Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Email
#---------------------------------------------------------
Cadastro - Campo Nome em branco
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho os campos de cadastro menos "Nome"
  E clico em salvar
  Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Nome
#---------------------------------------------------------
Cadastro - Campo Senha em branco
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho os campos de cadastro menos "Senha"
  E clico em salvar
  Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Senha 
#---------------------------------------------------------
Cadastro - Número de celular em formato inválido
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho o campo "Telefone" com um formato inválido
  E clico em salvar
  Então uma mensagem de "Formato inválido" deverá ser exibida 
#---------------------------------------------------------
Cadastro - Senha sem letras
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho o campo "Senha" com apenas números
  E clico em salvar
  Então a mensagem " Mínimo de 1 letra" deverá ficar "unchecked"
#---------------------------------------------------------
Cadastro - Senha sem números
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho o campo "Senha" com apenas letras
  E clico em salvar
  Então a mensagem " Mínimo de 1 número" deverá ficar "unchecked"
#---------------------------------------------------------
Cadastro - Senha com menos de 6 caracteres
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho o campo "Senha" sem o número de caracteres mínimo
  E clico em salvar
  Então a mensagem "Mínimo de 6 caracteres" deverá ficar "unchecked"
#---------------------------------------------------------