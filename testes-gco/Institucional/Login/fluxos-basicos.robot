*** Settings ***
Library    SeleniumLibrary
Resource    ../../shared/browser-setup.robot
Resource    ../../pages/config_cabeçalho.robot
Resource    ../../pages/config_login.robot
Task Teardown    Close Browser

*** Test Cases ***
Login - Login com e-mail e senha válidos
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
  E preencho os campos E-mail e Senha
  E clico em "Entrar"
  Então devo ser redirecionado para a area do aluno
#-------------------------------------------------------------
Login - Senha Oculta por padrão
  Dado que estou no institucional 
  Quando clico no botão "Entrar"
#-------------------------------------------------------------
Login - A partir da página de assinatura ilimitada
  Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/assinatura-ilimitada#abas-novo-layout"
  Quando o usuário informe o "E-mail" - ASS
  E o usuário informe a "Senha" - ASS
  E o usuário acione o botão "Entrar"
  Então o sistema redireciona o aluno logado para o modal de checkout de assinatura ilimitada.
#--------------------------------------------------------------
Login - A partir do carrinho de curso avulso
  Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/carrinho/identificacao"
  Quando o usuário informe o "E-mail" - CA
  E o usuário informe a "Senha" - CA
  E o usuário acione o botão "Entrar e Finalizar compra"
  Então o sistema redireciona o aluno logado para página de checkout 