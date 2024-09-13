*** Settings ***
Library    SeleniumLibrary


**Variables***
#CSS (Mais confiavel)
${menu-concursos}                    css=#navbarDropdown
${menu-concursos-assinatura}         css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(1) > a > div > div > span.col-12.p-0.float-left.semibold
${titulo-assinatura-ilimitada}       css=#header-nova-AI > div.top-header-container > div > p > span
${menu-concursos-granquestoes}       css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(3) > a > div > div > span.col-12.p-0.float-left.semibold
${logo-gran-questoes}                css=#__layout > div > div.wrapper > div > div > section:nth-child(3) > div > div > div:nth-child(1) > div > span.s38.w500.source.w400.s14.text-dark-900.align-left
${menu-concursos-coaching}           css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(4) > a > div
${logo-granxperts}                   css=#wow > section.topo > header > div > nav > a > div > img
${menu-concursos-cfc}                css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(5) > a > div
${logo-grancfc}                      css=#__next > section.topo_section-topo-container-cfc__U2Fvy > nav > img
${menu-concursos-residencia}         css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(6) > a > div
${titulo-residencias-saude}          css=#logo > img
${menu-concursos-oficinaredacao}     css=#navbarSupportedContent > ul > li.nav-item.dropdown.mega-dropdown.show > ul > li.col-lg-4.col-xl-4.col-12.float-left > ul > li:nth-child(7) > a > div
${logo-oficina-redacao}              css=#capa-bg > div > img
${menu-cursopor-concurso}            css=#v-pills-concurso-tab
${curso-por-concurso-select}         css=#v-pills-concurso > ul > li:nth-child(1) > a
${logo_curso_cnu}                    css=#hero > div > div.hero-content > div > div.pre-title.justify-content-center.justify-content-sm-start > span
${botao-ver-todos-concursos}         css=#v-pills-concurso > div > a
${menu-cursopor-carreiras}           css=#v-pills-carreira-tab
${curso-por-carreira-select}         css=#v-pills-carreira > ul > li:nth-child(1) > a
${botao-ver-todas-carreiras}         css=#v-pills-carreira > div > a
${menu-cursopor-estado}              css=#v-pills-estado-tab
${botao-ver-todos-estados}           css=#v-pills-estado > div > a
${menu-cursopor-professor}           css=#v-pills-professor-tab
${curso-por-professor-select}        css=#v-pills-professor > ul > li:nth-child(1) > a
${botao-ver-todos-professores}       css=#v-pills-professor > div > a
${titulo-cursos-por-professores}     css=#pagina-carreiras > div.w-100.float-left.bg-color-light-0.mh-body-ava > div > div > section > div > div > div > div > div > input
${menu-cursopor-banca}               css=#v-pills-banca-tab
${curso-por-banca-select}            css=#v-pills-banca > ul > li:nth-child(1) > a
${botao-ver-todas-bancas}            css=#v-pills-banca > div > a
${menu-tseunificado}                 css=#navbarSupportedContent > ul > li:nth-child(2) > a
${logo-tse}                          css=#hero > div > div.hero-content > div.left-side > div.wrapper.d-flex.flex-column.align-items-center.align-items-lg-start > div.wrapper-title.d-flex.gap-1 > h1
${menu-graduacao}                    css=#navbarSupportedContent > ul > li:nth-child(3) > a
${logo-gran-graduacao}               css=#logo > div > div.text
${menu-mba}                          css=#navbarSupportedContent > ul > li:nth-child(4) > a
${titulo-gran-mba}                   css=#cursos > div > h3
${menu-pos}                          css=#navbarSupportedContent > ul > li:nth-child(5) > a
${logo-gran-pos-graduacao}           css=#logo > div > div.text > span
${menu-oab}                          css=#navbarSupportedContent > ul > li:nth-child(7) > a > span
${logo-gran-oab}                     css=body > header > nav > div:nth-child(1) > a > img
${menu-mentorias}                    css=#navbarSupportedContent > ul > li:nth-child(8) > a > span
${menu-conteudogratuito}             css=#navbarSupportedContent > ul > li:nth-child(9) > div > a
${menu-conteudog-aulasg}             css=#navbarSupportedContent > ul > li:nth-child(9) > div > ul > li:nth-child(1) > a
${menu-conteudog-aulas-aovivo}       css=#navbarSupportedContent > ul > li:nth-child(9) > div > ul > li:nth-child(2) > a
${menu-conteudog-materialg}          css=#navbarSupportedContent > ul > li:nth-child(9) > div > ul > li:nth-child(3) > a
${titulo-material-gratis}            id=cards
${menu-blog}                         css=#navbarSupportedContent > ul > li:nth-child(10) > a
${titulo-gran-blog}                  css=#menu-estados
${menu-aprovados}                    css=#navbarSupportedContent > ul > li:nth-child(11) > div > a
${titulo-gran-aprovados}             css=#secao-se-torne-um-gran-aprovado > div > div > div.texto-apoio.col-sm-6 > div > h1 > p
${menu-questoes}                     css=#navbarSupportedContent > ul > li:nth-child(12) > a



#Xpath
${titulo-cursos-por-concurso}        xpath=//h1[text()="Cursos por Concurso"]
${titulo-carreira-selecionada}       xpath=//h1[text()="Administrativas "]
${curso-por-estado-select}           xpath=//*[@title="Concursos do estado do Acre"]
${titulo-cursos-por-carreira}        xpath=//h1[text()="Cursos por Carreira"]
${logo-estado}                       xpath=//h1[text()="Concurso Acre: Conheça todos os concursos abertos e previstos para o seu estado!"]
${titulo-cursos-por-estados}         xpath=//h1[text()="Cursos por Estado"]
${nome-professor}                    xpath=//h1[text()="Elias Santana"]
${nome-banca}                        xpath=//h1[text()="CESPE/CEBRASPE - Centro de Seleção e de Promoção de Eventos UnB"]
${titulo-cursos-por-bancas}          xpath=//h1[text()="Cursos por Banca"]
${titulo-gran-mentorias}             xpath=//h2[text()="Sobre o concurso"]
${titulo-aulas-gratis}               xpath=//h1[text()="Calendário de aulas grátis"]
${titulo-aulas-aovivo}               xpath=//p[text()="Busque por uma aula"]



***Keywords***
Quando clico em "Concursos"
    # Clica em "Concursos"
    Click Element                                ${menu-concursos} 

#----------------------------------------------------------------------------------
E em "Assinatura ilimitada"
    # Espera a "Assinatura ilimitada 2.0" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-assinatura}    timeout=10s
    # Clica em "Assinatura ilimitada 2.0"
    Click Element                                ${menu-concursos-assinatura} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de assinatura ilimitada
    # Espera o titulo da pagina da assinatura ilimitada estar visivel
    Wait Until Element Is Visible                ${titulo-assinatura-ilimitada}    timeout=10s

#----------------------------------------------------------------------------------
E em "Gran Questões"
    # Espera o "Gran Questões" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-granquestoes}    timeout=10s
    # Clica em "Gran Questões"
    Click Element                                ${menu-concursos-granquestoes} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do Gran questões
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o logo da página do Gran Questões estar visível
    Wait Until Element Is Visible    ${logo-gran-questoes}    timeout=10s

#----------------------------------------------------------------------------------
E em "Coaching"
    # Espera o "Coaching" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-coaching}    timeout=10s
    # Clica em "Coaching"
    Click Element                                ${menu-concursos-coaching}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do GRANXPERTS
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o logo da página do GranXperts estar visível
    Wait Until Element Is Visible    ${logo-granxperts}    timeout=10s

#----------------------------------------------------------------------------------
E em "CFC"
    # Espera o "CFC" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-cfc}    timeout=10s
    # Clica em "CFC"
    Click Element                                ${menu-concursos-cfc}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do CFC
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o logo da página do CFC estar visível
    Wait Until Element Is Visible    ${logo-grancfc}    timeout=10s

#----------------------------------------------------------------------------------
E em "Residência"
    # Espera o "Residência" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-residencia}    timeout=10s
    # Clica em "Residência"
    Click Element                                ${menu-concursos-residencia}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do Residências - Saúde
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o titulo da página do Residências - Saúde estar visível
    Wait Until Element Is Visible    ${titulo-residencias-saude}    timeout=10s
#----------------------------------------------------------------------------------
E em "Oficina de Redação"
    # Espera a "Oficina de Redação" estar visivel no menu
    Wait Until Element Is Visible                ${menu-concursos-oficinaredacao}    timeout=10s
    # Clica em "Oficina de Redação"
    Click Element                                ${menu-concursos-oficinaredacao}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do Redação sob medida
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
    # Espera o logo da página da Oficina de redaçao estar visível
    Wait Until Element Is Visible    ${logo-oficina-redacao}    timeout=10s     

#----------------------------------------------------------------------------------
E na seção "Cursos por" selecionar concurso
    # Espera a opçao "Concurso" estar visivel
    Wait Until Element Is Visible    ${menu-cursopor-concurso}
    # Clica na opçao "Concurso"  
    Click Element                    ${menu-cursopor-concurso}  
#----------------------------------------------------------------------------------
E clico em algum concurso da sessão
    # Clica no primeiro concurso visivel
    Click Element    ${curso-por-concurso-select}
#----------------------------------------------------------------------------------

Então devo ser redirecionado para a tela do concurso selecionado
    #Espera o logo do curso selcionado estar visivel na pagina
    Wait Until Element Is Visible    ${logo_curso_cnu}     timeout=10s

#----------------------------------------------------------------------------------
E clico em "Ver todos os concursos"
    # Clica em "Ver todos os concursos"
    Click Element    ${botao-ver-todos-concursos}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Curso por concursos
    Wait Until Element Is Visible    ${titulo-cursos-por-concurso}    timeout=10s    

#----------------------------------------------------------------------------------
E na seção "Cursos por" selecionar "Carreira"
    # Espera a opçao "Carreira" estar visivel
    Wait Until Element Is Visible    ${menu-cursopor-carreiras}
    # Clica na opçao "Carreira"  
    Click Element                    ${menu-cursopor-carreiras}  
    
#----------------------------------------------------------------------------------
E clico em alguma carreira da sessão
    Wait Until Element Is Visible        ${curso-por-carreira-select}
    # Clica na primeiro carreira visivel
    Click Element                        ${curso-por-carreira-select}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da carreira selecionada
    # Espera o titulo da carreira selecionada estar visivel na pagina
    Wait Until Element Is Visible      ${titulo-carreira-selecionada}    timeout=15s    

#-----------------------------------------------------------------------------------
E clico em "Ver todas as carreiras"
    # Espera o botao "Ver todas as carreiras" estar visivel
    Wait Until Element Is Visible          ${botao-ver-todas-carreiras}
    # Clica em "Ver todas os carreiras"
    Click Element                          ${botao-ver-todas-carreiras}

#------------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Curso por carreiras
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible      ${titulo-cursos-por-carreira}    timeout=10s  
#------------------------------------------------------------------------------------
E na seção "Cursos por" selecionar "Estado"
    # Espera a opçao "Estado" estar visivel
    Wait Until Element Is Visible    ${menu-cursopor-estado}
    # Clica na opçao "Estado"  
    Click Element                    ${menu-cursopor-estado}
#------------------------------------------------------------------------------------
E clico em algum estado da sessão
    Wait Until Element Is Visible        ${curso-por-estado-select}
    # Clica no primeiro estado visivel
    Click Element                        ${curso-por-estado-select}

#------------------------------------------------------------------------------------
Então devo ser redirecionado para a tela dos cursos pelo estado selecionado
    # Espera a logo do estado selecionado estar visivel na pagina
    Wait Until Element Is Visible    ${logo-estado}    timeout=10s  

#------------------------------------------------------------------------------------
E clico em "Ver todos os estados"
    # Espera o botao "Ver todos os estados" estar visivel
    Wait Until Element Is Visible          ${botao-ver-todos-estados}
    # Clica em "Ver todos os estados"
    Click Element                          ${botao-ver-todos-estados}

#------------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Curso por estados
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible      ${titulo-cursos-por-estados}    timeout=10s 
#------------------------------------------------------------------------------------
E na seção "Cursos por" selecionar "Professor"
    # Espera a opçao "Professor" estar visivel
    Wait Until Element Is Visible    ${menu-cursopor-professor}
    # Clica na opçao "Professor"  
    Click Element                    ${menu-cursopor-professor} 
#----------------------------------------------------------------------------------
E clico em algum professor da sessão
    Wait Until Element Is Visible        ${curso-por-professor-select}
    # Clica no primeiro professor visivel
    Click Element                        ${curso-por-professor-select}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do professor selecionado
    # Espera a nome do professor selecionado estar visivel na pagina
    Wait Until Element Is Visible    ${nome-professor}    timeout=10s  
#----------------------------------------------------------------------------------

E clico em "Ver todos os professores"
    # Espera o botao "Ver todos os professores" estar visivel
    Wait Until Element Is Visible          ${botao-ver-todos-professores}
    # Clica em "Ver todos os professores"
    Click Element                          ${botao-ver-todos-professores}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Curso por professores
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible      ${titulo-cursos-por-professores}    timeout=10s 

#----------------------------------------------------------------------------------
E na seção "Cursos por" selecionar "Banca"
    # Espera a opçao "Banca" estar visivel
    Wait Until Element Is Visible    ${menu-cursopor-banca}
    # Clica na opçao "Banca"  
    Click Element                    ${menu-cursopor-banca} 

#----------------------------------------------------------------------------------
E clico em alguma banca da sessão
    Wait Until Element Is Visible        ${curso-por-banca-select}
    # Clica na primeira banca visivel
    Click Element                        ${curso-por-banca-select}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da banca selecionada
    # Espera a nome da banca selecionado estar visivel na pagina
    Wait Until Element Is Visible    ${nome-banca}    timeout=10s  
#----------------------------------------------------------------------------------
E clico em "Ver todas as bancas"
    # Espera o botao "Ver todas as bancas" estar visivel
    Wait Until Element Is Visible          ${botao-ver-todas-bancas}
    # Clica em "Ver todas as bancas"
    Click Element                          ${botao-ver-todas-bancas}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Curso por bancas
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible          ${titulo-cursos-por-bancas}    timeout=10s 
#----------------------------------------------------------------------------------
Quando clico em "TSE Unificado"
    # Clicar em TSE Unificado
    Click Element                          ${menu-tseunificado} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela do TSE Unificado
    # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o logo do TSE Unificado estar visivel na pagina
    Wait Until Element Is Visible    ${logo-tse}    timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "Graduação"
    # Clicar em Graduação
    Click Element                          ${menu-graduacao} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da Gran Faculdade - Graduação
        # Espera a nova aba/janela abrir
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o logo do Graduação estar visivel na pagina
    Wait Until Element Is Visible    ${logo-gran-graduacao}     timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "MBA"
    # Clicar em MBA
    Click Element                          ${menu-mba} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da Gran Faculdade - MBA
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o titulo do Gran MBA estar visivel na pagina
    Wait Until Element Is Visible    ${titulo-gran-mba}     timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "Pós"
    # Clicar em Pos
    Click Element                          ${menu-pos} 

#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da Gran Faculdade - Pós
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o logo do Pos Graduação estar visivel na pagina
    Wait Until Element Is Visible    ${logo-gran-pos-graduacao}     timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "OAB"
    # Clicar em OAB
    Click Element                          ${menu-oab} 
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da Gran Faculdade - OAB
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o logo do Graduação estar visivel na pagina
    Wait Until Element Is Visible    ${logo-gran-oab}     timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "Mentorias"
    # Clicar em Mentorias
    Click Element                          ${menu-mentorias} 
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a tela de Mentorias
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o titulo do Gran Mentorias estar visivel na pagina
    Wait Until Element Is Visible    ${titulo-gran-mentorias}     timeout=10s
#----------------------------------------------------------------------------------
Quando clico em "Conteúdo gratuito"
    #Clicar em conteudo gratuito
    Click Element                    ${menu-conteudogratuito}
    
#----------------------------------------------------------------------------------
E em Aulas grátis
    # Espera a opçao "Aulas gratis" estar visivel
    Wait Until Element Is Visible    ${menu-conteudog-aulasg}
    # Clica na opçao "Aulas gratis"
    Click Element                    ${menu-conteudog-aulasg}

#----------------------------------------------------------------------------------
Então devo ser redirecionado para o calendario de aulas grátis
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible    ${titulo-aulas-gratis}    timeout=10s

#----------------------------------------------------------------------------------
 E em Aulas ao vivo
    # Espera a opçao "Aulas ao vivo" estar visivel
    Wait Until Element Is Visible    ${menu-conteudog-aulas-aovivo}
    # Clica na opçao "Aulas ao vivo"
    Click Element                    ${menu-conteudog-aulas-aovivo}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para o calendario de Aulas ao vivo
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible    ${titulo-aulas-aovivo}    timeout=10s
#----------------------------------------------------------------------------------
E em Material grátis
    # Espera a opçao "Material grátis" estar visivel
    Wait Until Element Is Visible    ${menu-conteudog-materialg}
    # Clica na opçao "Material grátis"
    Click Element                    ${menu-conteudog-materialg}
#----------------------------------------------------------------------------------
Então devo ser redirecionado para a listagem de Mateirais gratuitos
    # Espera o titulo da pagina estar visivel
    Wait Until Element Is Visible    ${titulo-material-gratis}    timeout=10s
#---------------------------------------------------------------------------------
Quando clico em "Blog"
    # Clicar em Blog
    Click Element                          ${menu-blog} 
#---------------------------------------------------------------------------------
Então devo ser redirecionado para o Blog da Gran
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o titulo do Blog estar visivel na pagina
    Wait Until Element Is Visible    ${titulo-gran-blog}     timeout=10s
#---------------------------------------------------------------------------------
Quando clico em "Aprovados"
    # Clicar em Aprovados
    Click Element                          ${menu-aprovados}     
#---------------------------------------------------------------------------------
Então devo ser redirecionado para a tela da Gran Aprovados
    Sleep  2s
    # Obtém as handles de todas as janelas abertas
    ${janelas}=  Get Window Handles
    # Troca para a última janela (a nova aba aberta)
    Switch Window  ${janelas[-1]}
     # Esperar o titulo do Gran Aprovados estar visivel na pagina
    Wait Until Element Is Visible    ${titulo-gran-aprovados}     timeout=10s
#---------------------------------------------------------------------------------
Quando clico em "Questões grátis"
        # Clicar em Questões grátis
    Click Element                          ${menu-questoes}   