*** Settings ***
Library    SeleniumLibrary
Resource    ../../pages/config_cabeçalho.robot
Resource    ../../shared/browser-setup.robot
Task Teardown    Close Browser


*** Test Cases ***

Pesquisa por cursos
    Dado que estou no institucional
    Quando digito um curso na barra de pesquisa
    E aperto "Enter"
    Entao devo ser redirecionado para a pagina com os resultos esperados
#----------------------------------------------------------------------------------

Pesquisa por cursos - Resultados exibidos em lista
    Dado que estou no institucional
    Quando digito um curso na barra de pesquisa
    Entao os resultados deverão ser exibidos em lista embaixo da pesquisa
#----------------------------------------------------------------------------------

Redirecionamento para o carrinho de assinatura ilimitada
    Dado que estou no institucional
    Quando clico no ícone de "carrinho"
    Entao devo ser redirecionado para a tela do carrinho de assinatura ilimitada
#----------------------------------------------------------------------------------

Redirecionamento para o atendimento
    Dado que estou no institucional
    Quando clico no botão "Atendimento"
    Entao devo ser redirecionado para a tela de atendimento
#----------------------------------------------------------------------------------

Redirecionamento para a tela de identificação
    Dado que estou no institucional
    Quando clico no botão "Entrar"
    Entao devo ser redirecionado para a tela de login
#----------------------------------------------------------------------------------

Redirecionamento para a assinatura ilimitada
  Dado que estou no institucional
  Quando clico no botão "Assinatura ilimitada"
  Entao devo ser redirecionado para a tela de Assinatura ilimitada
#----------------------------------------------------------------------------------
