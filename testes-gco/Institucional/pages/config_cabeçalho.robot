*** Settings ***
Library    SeleniumLibrary


**Variables***
${campo-pesquisa}                name=q
${resultado-busca}               css=#pagina-carreiras > section > div.container > div > div > div > div > div > div > h1
${lista-resultados}              class=autocomplete-suggestions
${icone-carrinho}                css=#div-carrinho-identificacao > a
${titulo-carrinho}               css=#carrinho-section > section > div > div > h1
${botao-atendimento}             css=#container-assinatura-topo > div > span > a
${titulo-atendimento}            css=#main-content > div > span
${botao-entrar}                  css=#container-assinatura-topo > div > a > span.d-none.d-sm-inline-block.semibold
${titulo-login}                  css=#row-login > div > div:nth-child(2) > div > h2
${botao-assinatura-ilimitada}    css=#container-assinatura-topo > ul > li > a
${titulo-assinatura}            css=#header-nova-AI > div.top-header-container > div > p > span

***Keywords***
Quando digito um curso na barra de pesquisa
    Wait Until Element Is Visible    ${campo-pesquisa} 
    Input Text                       ${campo-pesquisa}        "Enfermagem"
#---------------------------------------------------------------------------------

E aperto "Enter"
    Press Keys    ${campo-pesquisa}     ENTER

#---------------------------------------------------------------------------------

Entao devo ser redirecionado para a pagina com os resultos esperados
    Element Should Be Visible        ${resultado-busca}        "Enfermagem"
#---------------------------------------------------------------------------------
Entao os resultados deverão ser exibidos em lista embaixo da pesquisa
    Wait Until Element Is Visible    ${lista-resultados}       timeout=10s
    Element Should Be Visible        ${lista-resultados}       "Enfermagem"
#---------------------------------------------------------------------------------
Quando clico no ícone de "carrinho"
    Wait Until Element Is Visible    ${icone-carrinho} 
    Click Element                    ${icone-carrinho} 
#---------------------------------------------------------------------------------
Entao devo ser redirecionado para a tela do carrinho de assinatura ilimitada
    Wait Until Element Is Visible    ${titulo-carrinho}      timeout=10s
    Element Should Be Visible        ${titulo-carrinho}      "Carrinho"
#---------------------------------------------------------------------------------

Quando clico no botão "Atendimento"
    Wait Until Element Is Visible    ${botao-atendimento}   
    Click Element                    ${botao-atendimento}    
#---------------------------------------------------------------------------------
Entao devo ser redirecionado para a tela de atendimento
    Wait Until Element Is Visible    ${titulo-atendimento}    timeout=10s
    Element Should Be Visible        ${titulo-atendimento}    "Carrinho"
#---------------------------------------------------------------------------------
Quando clico no botão "Entrar"
    Wait Until Element Is Visible    ${botao-entrar}   
    Click Element                    ${botao-entrar} 
#---------------------------------------------------------------------------------
Entao devo ser redirecionado para a tela de login
    Wait Until Element Is Visible    ${titulo-login}    timeout=10s
    Element Should Be Visible        ${titulo-login}    "Entre"

#----------------------------------------------------------------------------------
Quando clico no botão "Assinatura ilimitada"
    Wait Until Element Is Visible    ${botao-assinatura-ilimitada}    
    Click Element                    ${botao-assinatura-ilimitada}  

#----------------------------------------------------------------------------------
Entao devo ser redirecionado para a tela de Assinatura ilimitada
    Wait Until Element Is Visible    ${titulo-assinatura}    timeout=10s
    Element Should Be Visible        ${titulo-assinatura}    "Assinatura ilimitada"