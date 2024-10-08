*** Settings ***
Library          SeleniumLibrary
#Library          ScreenCapLibrary
Resource         ../../shared/browser-setup.robot
Resource         ../../pages/config_cabeçalho.robot
Resource         ../../pages/config_cadastro.robot
#Test Setup       Start Video Recording     
Test Teardown    Finish Session

*** Test Cases ***
Cadastro - Cadastrar usuário com e-mail
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E preencho os campos de cadastro com um e-mail
  E clico em salvar
  Então devo ser redirecionado para a area do aluno

#------------------------------------------------------
Cadastro - Link política de privacidade
  Dado que estou no institucional   
  Quando clico no botão "Entrar"
  E na pagina de cadastro clico no link de "Política de Privacidade"
  Então devo ser redirecionado para a tela de "Política de privacidade"
#---------------------------------------------------------
Cadastro - A partir do carrinho de curso avulso
  Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/carrinho/identificacao"
  Quando o usuário informe o "Nome"
  E o usuário informe o "E-mail"
  E o usuário informe o "Celular"
  E o usuário informe a "Senha"
  E o usuário marque a opção "Ao cadastrar-se, você concorda com a nossa Política de Privacidade e aceita receber comunicação do Gran Cursos Online."
  E o usuário acione o botão "Cadastrar"
  Então o sistema redireciona o aluno cadastrado para página de "Finalize seu pedido" 
#---------------------------------------------------------
Cadastro - A partir da página de assinatura ilimitada
  Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/assinatura-ilimitada#abas-novo-layout"
  Quando o usuário informe o "Nome"
  E o usuário informe o "E-mail"
  E o usuário informe o "Celular"
  E o usuário informe a "Senha"
  E o usuário marque a opção "Ao cadastrar-se, você concorda com a nossa Política de Privacidade e aceita receber comunicação do Gran Cursos Online."
  E o usuário acione o botão "Cadastrar e finalizar o pedido"
  Então o sistema redireciona o aluno cadastrado para página de checkout 