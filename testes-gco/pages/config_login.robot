*** Settings ***
Library    SeleniumLibrary


**Variables***
${campo-email-login}            css=#login-email-site    
${email-login-assinatura}       css=#login-email
${senha-login-assinatura}       css=#login-senha
${input-email}                  robot.automacaogran@gmail.com
${campo-senha}                  css=#login-senha-site    
${input-senha}                  M7p@@1
${botao-entrar-login}           css=#login-entrar-site
${botao-entrar-google}          css=#btn-login-google
${botao-proxima}                css=#identifierNext > div > button > span
${campo-senha-google}           css=#password > div.aCsJod.oJeWuf > div > div.Xb9hP > input
${input-senha-google}           30820025
${msg-email-invalido}           css=#parsley-id-18 > span 
${msg-email-senha-incorretos}   css=#identificacao > div:nth-child(1) > div
${botao-ocultar}                css=#identificacao-login > div:nth-child(4) > div > div > span 
${msg-campos-obrigatorios}      css=#identificacao > div:nth-child(1) > div
${tela-meus-cursos}             id=sideNav
${modal-pagamento}              css=#carrinho-section
${btnentrar-login-assinatura}   css=#btn-login-site
${email-login-curso}            css=#login-email2 
${senha-login-curso}            id=login-senha2
${btn-entrar-login-curso}       css=#btn-login-site2
${titulo-checkout}              css=#carrinho
#btn-login-site2
***Keywords***
E preencho os campos E-mail e Senha
    # Espera o campo "e-mail" estar visível 
    Wait Until Element Is Visible    ${campo-email-login}
    # Digita o e-mail
    Input Text                       ${campo-email-login}    ${input-email}
    # Digita a senha
    Input Text    ${campo-senha}     ${input-senha}

E clico em "Entrar"
    # Clica em entrar
    Click Element                    ${botao-entrar-login}
#---------------------------------------------------------------------------------------------------------------------
Então devo ser redirecionado para a area do aluno
    Wait Until Element Is Visible    ${tela-meus-cursos}    timeout=7s

    
E preencho os campos E-mail com um formato inválido
    # Espera o campo "e-mail" estar visível 
    Wait Until Element Is Visible    ${campo-email-login}
    # Digita o e-mail de forma inválida
    Input Text                       ${campo-email-login}    teste123
    Click Element                    ${campo-senha}

#---------------------------------------------------------------------------------------------------------------------
Então uma mensagem de "Este campo deve ser um email válido."
    Wait Until Element Is Visible    ${msg-email-invalido}    timeout=10s

#---------------------------------------------------------------------------------------------------------------------
E preencho o E-mail
        # Espera o campo "e-mail" estar visível 
    Wait Until Element Is Visible    ${campo-email-login}
    # Digita o e-mail
    Input Text                       ${campo-email-login}    ${input-email}
E preencho o campo "Senha" com uma senha incorreta
    # Digita a senha de forma incorreta
    Input Text    ${campo-senha}     123dwad
Então uma mensagem de "O email/senha informados estão incorretos." deverá ser exibida
    Wait Until Element Is Visible    ${msg-email-senha-incorretos}
    Element Should Be Visible        ${msg-email-senha-incorretos}    O email/senha informados estão incorretos. 

#---------------------------------------------------------------------------------------------------------------------
Então na pagina de login a senha deverá vir oculta como padrão
    # Espera o botao "Ocultar" estar visível
    Wait Until Element Is Visible    ${botao-ocultar}  
    # Verifica se o campo está vindo oculto
    Element Should Be Visible        ${botao-ocultar}     Ocultar


#-----------------------------------------------------------------------------------------------------------------------------
E Preencho a senha
    # Espera até o campo senha estar visivel
    Wait Until Element Is Visible    ${campo-senha}
    #Preenche campo senha
    Input Text    ${campo-senha}    @mwdladkal

Então um mensagem de "Ocorreu um erro ao submeter o formulário!" deverá ser exibida
    # Espera a mensagem de alerta estar viísvel
    Wait Until Element Is Visible    ${msg-campos-obrigatorios}
    Element Should Be Visible       ${msg-campos-obrigatorios}            O dado informado no(s) campo(s) em vermelho está incorreto.

#--------------------------------------------------------------------------------------------------------------------------------------------------
Quando o usuário informe o "E-mail" - CA
     # Espera o campo "e-mail" estar visível 
    Wait Until Element Is Visible    ${email-login-curso}     
    # Digita o e-mail
    Input Text                       ${email-login-curso}    ${input-email}        
E o usuário informe a "Senha" - CA
    # Digita a senha
    Input Text    ${senha-login-curso}     ${input-senha}
E o usuário informe a "Senha" - ASS
           # Digita a senha
    Input Text    ${senha-login-assinatura}     ${input-senha}
#---------------------------------------------------------------------------------------------------------------------------------
Quando o usuário informe o "E-mail" - ASS
     # Espera o campo "e-mail" estar visível 
    Wait Until Element Is Visible    ${email-login-assinatura}     
    # Digita o e-mail
    Input Text                       ${email-login-assinatura}    ${input-email}  
E o usuário acione o botão "Entrar"
    # Clica em entrar
    Click Element                    ${btnentrar-login-assinatura}
#---------------------------------------------------------------------------------------------------------------------------------
Então o sistema redireciona o aluno logado para o modal de checkout de assinatura ilimitada.
    # Espera o modal de pagamento estar visível
    Wait Until Element Is Visible    ${modal-pagamento}     timeout=10s    
#-----------------------------------------------------------------------------------------------------------------------------------
Então o sistema redireciona o aluno logado para página de checkout
    # Espera o modal de pagamento estar visivel
    Wait Until Element Is Visible    ${titulo-checkout}    timeout=15s
#----------------------------------------------------------------------------------------------------------------------------------
E o usuário acione o botão "Entrar e Finalizar compra"
    # Clica em entrar
    Click Element                    ${btn-entrar-login-curso}