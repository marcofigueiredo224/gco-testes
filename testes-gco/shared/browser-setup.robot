* Settings *
Library    SeleniumLibrary

*Variables**
${BROWSER}                       chrome
${URL-inicial-branch}            https://rt7:00%40rt7%4000@gcro-47-feature.devops.grancursosonline.com.br
${URL-ass-ilimitada-branch}      https://rt7:00%40rt7%4000@gcro-47-feature.devops.grancursosonline.com.br/assinatura-ilimitada#abas-novo-layout
${URL-ass-ilimitada}             https://grancursosonline.com.br/assinatura-ilimitada#abas-novo-layout
${URL-curso-branch}              https://rt7:00%40rt7%4000@gcro-47-feature.devops.grancursosonline.com.br/cursos/por-concurso/concurso-nacional-unificado-cnu-conhecimentos-gerais-para-todos-os-blocos
${URL-curso-avulso}              https://www.grancursosonline.com.br/cursos/por-concurso/concurso-nacional-unificado-cnu-conhecimentos-gerais-para-todos-os-blocos
${btn-comprar-agora}             xpath=//a[@href='carrinho/incluir-curso/id/119482']
${btn-forma-pagamento}           css=#carrinho-section > div > div > div.col-lg-4.offset-lg-1.float-left > div.card.p-4.card-flutuante.w-100 > div.col-md-12.p-0.m-b-2.float-left.mt-3 > a.btn.btn-primary.float-right.btn-lg.btn-finalizar-compra.w-100
${fechar-cookies}                id=onetrust-accept-btn-handler
${btn-comece-hoje}               css=#lista-planos-assinatura > div:nth-child(2) > a > div.card-info > button
${OPTIONS}                    add_argument("--headless"); add_argument("--disable-gpu"); add_argument("--window-size=1920,1080")

**Keywords**
Dado que estou no institucional
    
    Open Browser    ${URL-inicial-branch}    browser=${BROWSER}  options=${OPTIONS}  
    Maximize Browser Window
#---------------------------------------------------------------------------------
Finish Session
    Capture Page Screenshot
    #Stop Video Recording 
    Close Browser

Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/carrinho/identificacao"
    Open Browser    ${URL-inicial-branch}    browser=${BROWSER}      options=${OPTIONS}  
    Maximize Browser Window
    Go to                                         ${URL-curso-branch}        
    Wait Until Element Is Visible           ${btn-comprar-agora}
    Click Element   ${fechar-cookies}
    Click Element   ${btn-comprar-agora}
    Wait Until Element Is Visible           ${btn-forma-pagamento} 
    Click Element                           ${btn-forma-pagamento}  
#----------------------------------------------------------------------------------
Dado que o usuário esteja na página de identificação "https://www.grancursosonline.com.br/assinatura-ilimitada#abas-novo-layout"
    Open Browser    ${URL-inicial-branch}   browser=${BROWSER}      options=${OPTIONS}  
    Maximize Browser Window
    Go to                      ${URL-ass-ilimitada-branch}      
    Sleep     2s                           
    Execute JavaScript  document.querySelector("#lista-planos-assinatura > div:nth-child(2) > a > div.card-plano-header-novo-layout > div.titulo-plano").scrollIntoView()   
    Click Element                           ${btn-comece-hoje}
