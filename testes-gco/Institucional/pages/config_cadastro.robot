*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
*** Variables ***
${dominio}                     @gmail.com
${email-preifixo}              teste.robot
${campo_email}                 css=#email
${campo_nome}                  id=nome
${campo-celular}               id=celular
${campo-senha}                 name=senha
${select-checkbox}             css=#form-group-termos-e-condicoes > label > span.box
${botao-cadastrar}             id=btn-cadastro
${tela-meus-cursos}            id=sideNav
${msg-telefone-obrigatorio}    css=#parsley-id-9 > span
${msg-email-obrigatorio}       css=#parsley-id-7 > span
${msg-nome-obrigatorio}        css=#parsley-id-5 > span
${msg-nome-senha}              css=#parsley-id-11 > span
${msg-telefone-invalido}       css=#parsley-id-9 > span
${min-caracteres-check}        css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-tamanho.text-color-dark-900.carrinho-identificacao-requisito-senha-ok
${min-numeros-check}           css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-numero.text-color-dark-900.carrinho-identificacao-requisito-senha-ok
${min-letras-unchecked}        css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-letra.text-color-dark-900
${min-numeros-unchecked}       css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-numero.text-color-dark-900       
${min-letras-cheack}           css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-letra.text-color-dark-900.carrinho-identificacao-requisito-senha-ok
${min-caracteres-unchecked}    css=#form-cadastro-simples > div:nth-child(7) > div > div.form-text.text-muted.body-3.d-flex.flex-column.justify-content-start > span.carrinho-identificacao-requisito-senha.requisito-senha-tamanho.text-color-dark-900
${link-politica-privacidade}   css=#form-group-termos-e-condicoes > label > span:nth-child(3) > a
${titulo-pagina-privacidade}   css=#politica-de-privacidade > div > div.conteudo-politica-de-privacidade.text-justify > h1
${titulo-finaliar-compra}      css=#carrinho-section > section.pt-3.pb-3.float-left.col-12.p-0.float-left.bg-color-blue-600.text-white > div > div > h2
${btn-cadastrar-finalizar}     css=#btn-cadastrar-modal
${titulo-checkout}             css=#carrinho-section 
${DDD}                         61


*** Keywords ***
E preencho os campos de cadastro com um e-mail
    # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Preencher o campo "Nome"
    Input Text     ${campo_nome}        Robot Name 
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Preenche o campo "e-mail"
    Input Text     ${campo_email}       ${email-preifixo}${CODIGO}${dominio} 
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Preenche o campo "Celular"
    Input Text     ${campo-celular}    ${DDD}${numero-telefone}
    # Gera uma senha aleatória
    ${senha}   FakerLibrary.Password
    # Preenche o campo "Senha"
    Input Text        ${campo-senha}     ${senha} 
    # Aceita os termos
    Click Element     ${select-checkbox}

 E clico em salvar
    # Clica no botão "Entrar"
    Click Element     ${botao-cadastrar}
Então devo ser redirecionado para a area do aluno
    Wait Until Element Is Visible    ${tela-meus-cursos}    timeout=15s
#--------------------------------------------------------------------------------------
E preencho os campos de cadastro menos "Celular"   
        # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Preencher o campo "Nome"
    Input Text     ${campo_nome}        Robot Name 
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Preenche o campo "e-mail"
    Input Text     ${campo_email}       ${email-preifixo}${CODIGO}${dominio} 
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Clico no campo "Celular"
    Click Element     ${campo-celular}    
    # Gera uma senha aleatória
    ${senha}   FakerLibrary.Password
    # Preenche o campo "Senha"
    Input Text        ${campo-senha}     ${senha} 
    # Aceita os termos
    Click Element     ${select-checkbox}
Então uma mensagem de "Este campo é obrigatório." deverá ser exibida
    Element Should Be Visible   ${msg-telefone-obrigatorio}    Este campo é obrigatório.
#---------------------------------------------------------------------------------------------------------------------------------------------
E preencho os campos de cadastro menos "E-mail"
    # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Preencher o campo "Nome"
    Input Text     ${campo_nome}        Robot Name 
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Clica no campo "e-mail"
    Click Element     ${campo_email}      
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Preenche o campo "Celular"
    Input Text     ${campo-celular}    ${numero-telefone}
    # Gera uma senha aleatória
    ${senha}   FakerLibrary.Password
    # Preenche o campo "Senha"
    Input Text        ${campo-senha}     ${senha} 
    # Aceita os termos
    Click Element     ${select-checkbox}
Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Email
    Element Should Be Visible   ${msg-email-obrigatorio}    Este campo é obrigatório.
#-------------------------------------------------------------------------------------------------------------
E preencho os campos de cadastro menos "Nome"
    # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Clica no campo "Nome"
    Click Element  ${campo_nome}      
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Preenche o campo "e-mail"
    Input Text     ${campo_email}       ${email-preifixo}${CODIGO}${dominio} 
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Preenche o campo "Celular"
    Input Text     ${campo-celular}    ${numero-telefone}
    # Gera uma senha aleatória
    ${senha}   FakerLibrary.Password
    # Preenche o campo "Senha"
    Input Text        ${campo-senha}     ${senha} 
    # Aceita os termos
    Click Element     ${select-checkbox}

Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Nome
    Element Should Be Visible   ${msg-nome-obrigatorio}    Este campo é obrigatório.

#-------------------------------------------------------------------------------------------------------------
E preencho os campos de cadastro menos "Senha"
    # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Preencher o campo "Nome"
    Input Text                         ${campo_nome}        Robot Name 
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Preenche o campo "e-mail"
    Input Text     ${campo_email}       ${email-preifixo}${CODIGO}${dominio} 
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Preenche o campo "Celular"
    Input Text     ${campo-celular}    ${numero-telefone}
    # Clica no campo "Senha"
    Click Element                            ${campo-senha}     
    # Aceita os termos
    Click Element                            ${select-checkbox}
Então uma mensagem de "Este campo é obrigatório." deverá ser exibida - Senha 
    Element Should Be Visible                ${msg-nome-senha}    Este campo é obrigatório.

#-------------------------------------------------------------------------------------------------------------
E preencho o campo "Telefone" com um formato inválido
    # Espera o campo "Celular" estar visível
    Wait Until Element Is Visible           ${campo-celular}
    # Preenche o campo de forma inválida
    Input Text                              ${campo-celular}    1111
Então uma mensagem de "Formato inválido" deverá ser exibida 
    Element Should Be Visible   ${msg-telefone-invalido}    O número está incompleto. Insira um celular válido.

#-------------------------------------------------------------------------------------------------------------
E preencho o campo "Senha" com apenas números
    # Espera o campo "Senha" estar visível
    Wait Until Element Is Visible           ${campo-senha}
    # Preenche o campo apenas com números
    Input Text    ${campo-senha}    111111

Então a mensagem " Mínimo de 1 letra" deverá ficar "unchecked"
    # Valida se a mensagem "Mínimo de 6 caracteres" fica verde (check)
    Wait Until Element Is Visible     ${min-caracteres-check}
    # Valida se a mensagem " Mínimo de 1 número" fica verde (check)
    Wait Until Element Is Visible     ${min-numeros-check}
    # Valida se a mensgem " Mínimo de 1 letra" continua cinza (unchecked)
    Wait Until Element Is Visible     ${min-letras-unchecked}

#-------------------------------------------------------------------------------------------------------------
E preencho o campo "Senha" com apenas letras
     # Espera o campo "Senha" estar visível
    Wait Until Element Is Visible           ${campo-senha}
    # Preenche o campo apenas com letras
    Input Text    ${campo-senha}    aaaaaa
Então a mensagem " Mínimo de 1 número" deverá ficar "unchecked"
    # Valida se a mensagem "Mínimo de 6 caracteres" fica verde (check)
    Wait Until Element Is Visible     ${min-caracteres-check}
    # Valida se a mensagem " Mínimo de 1 número" continua cinza (unchecked)
    Wait Until Element Is Visible     ${min-numeros-unchecked}
    # Valida se a mensgem " Mínimo de 1 letra" fica verde (check)
    Wait Until Element Is Visible     ${min-letras-cheack}
#---------------------------------------------------------
E preencho o campo "Senha" sem o número de caracteres mínimo
    # Espera o campo "Senha" estar visível
    Wait Until Element Is Visible           ${campo-senha}
    # Preenche o campo apenas com letras
    Input Text    ${campo-senha}    12aa
Então a mensagem "Mínimo de 6 caracteres" deverá ficar "unchecked"
    # Valida se a mensagem " Mínimo de 1 número" cinza fica verde (check)
    Wait Until Element Is Visible     ${min-numeros-check}
    # Valida se a mensgem " Mínimo de 1 letra" cinza fica verde (check)
    Wait Until Element Is Visible     ${min-letras-cheack}
    # Valida se a mensagem "Mínimo de 6 caracteres" continua cinza fica verde (check)
    Wait Until Element Is Visible     ${min-caracteres-unchecked}

#---------------------------------------------------------
E na pagina de cadastro clico no link de "Política de Privacidade"
    # Espera o link estar visivel
    Wait Until Element Is Visible    ${link-politica-privacidade}
    # CLica no link
    Click Element                    ${link-politica-privacidade}

#---------------------------------------------------------
Então devo ser redirecionado para a tela de "Política de privacidade"
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o título da página estar visivel
    Wait Until Element Is Visible    ${titulo-pagina-privacidade}        timeout=10s
#---------------------------------------------------------

Quando o usuário informe o "Nome"
     # Espera o campo "Nome" estar visível
    Wait Until Element Is Visible       ${campo_nome}  
    # Preencher o campo "Nome"
    Input Text     ${campo_nome}        Robot Name        
E o usuário informe o "E-mail"
    # Faz com que a variavel "Código" sempre gere um número aleatório
    ${CODIGO}      FakerLibrary.Random Int
    # Preenche o campo "e-mail"
    Input Text     ${campo_email}       ${email-preifixo}${CODIGO}${dominio} 
E o usuário informe o "Celular"
    # Gera um número de telefone aleatório (Utilizado o credit card pois Phone number não tem os digítos minimos para o campo)
    ${numero-telefone}   FakerLibrary.Credit Card Number
    # Preenche o campo "Celular"
    Input Text     ${campo-celular}    ${DDD}${numero-telefone}
E o usuário informe a "Senha"
    # Gera uma senha aleatória
    ${senha}   FakerLibrary.Password
    # Preenche o campo "Senha"
    Input Text        ${campo-senha}     ${senha} 
E o usuário marque a opção "Ao cadastrar-se, você concorda com a nossa Política de Privacidade e aceita receber comunicação do Gran Cursos Online."
    # Aceita os termos
    Click Element     ${select-checkbox}
E o usuário acione o botão "Cadastrar"
    # Clica no botão "Entrar" 
    Click Element     ${botao-cadastrar}
#---------------------------------------------------------   timeout=10s
Então o sistema redireciona o aluno cadastrado para página de "Finalize seu pedido"
    Wait Until Element Is Visible    ${titulo-finaliar-compra}   timeout=20s
#---------------------------------------------------------------------------------------------
E o usuário acione o botão "Cadastrar e finalizar o pedido"
    Click Element   ${btn-cadastrar-finalizar}
#---------------------------------------------------------------------------------------------
Então o sistema redireciona o aluno cadastrado para página de checkout 
    Sleep    15s
    Wait Until Element Is Visible    ${titulo-checkout}       timeout=10s