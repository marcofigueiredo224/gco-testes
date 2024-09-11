*** Settings ***
Library    SeleniumLibrary


**Variables***
${botao-esqueceu-senha}                    css=#identificacao-login > div.checkbox.text-center.mt-3 > p > a
${campo-email-recuperacao}                 id=esqueceu-senha-email
${botao-enviar}                            id=btn-submit
${input-email-recuperacao}                 robot.automacaogran@gmail.com
${msg-email-enviado}                       css=#identificacao > div:nth-child(1) > div
${msg-email-invalido}                      css=#parsley-id-5 > span
***Keywords***
E clico em "Esqueceu a senha?"
    Wait Until Element Is Visible        ${botao-esqueceu-senha}
    # Clica em "Esqueceu a senha?"
    Click Element                        ${botao-esqueceu-senha}

E digito o e-mail para recuperação
    # Espera o campo de e-mail de recuperação estar visível
    Wait Until Element Is Visible        ${campo-email-recuperacao}    timeout=15s
    # Digita o e-mail para recuperação
    Input Text                           ${campo-email-recuperacao}    ${input-email-recuperacao}

E clico em "Enviar"
    # Clica em enviar
    Click Element                        ${botao-enviar}
Então devo ser redirecionado para o login
    #Valida o redirecionamento para a pagina de login
    Wait Until Element Is Visible        ${msg-email-enviado}    timeout=15s
E uma mensagem de "E-mail enviado" deverá ser exibida
    #Valida se a mensagem está sendo exibida corretamente
    Element Should Be Visible            ${msg-email-enviado}     Solicitação de recuperação de senha recebida!
    
#-----------------------------------------------------------------------------------------------------------------------------------
E preencho o e-mail de recuperação incorretamente
    # Espera o campo de e-mail de recuperação estar visível
    Wait Until Element Is Visible        ${campo-email-recuperacao}    timeout=15s
    # Digita o e-mail incorreto para recuperação
    Input Text                           ${campo-email-recuperacao}    teste.robot
    Click Element                        ${botao-enviar}
Então uma mensagem de "Este campo deve ser um email válido." deverá ser exibida
    Wait Until Element Is Visible    ${msg-email-invalido}
    Element Should Be Visible        ${msg-email-invalido}    Este campo deve ser um email válido.