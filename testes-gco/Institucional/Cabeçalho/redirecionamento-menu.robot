*** Settings ***
Library     SeleniumLibrary
Resource    ../../pages/config_menu-home.robot
Resource    ../../shared/browser-setup.robot
Task Teardown    Close Browser


*** Test Cases ***
Redirecionamento Menu - Concurso - Assinatura Ilimitada
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "Assinatura ilimitada"
  Então devo ser redirecionado para a tela de assinatura ilimitada

#----------------------------------------------------------------------------------
Redirecionamento Menu - Concurso - Gran Questões
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "Gran Questões"
  Então devo ser redirecionado para a tela do Gran questões

#----------------------------------------------------------------------------------
Redirecionamento Menu - Concurso - Coaching
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "Coaching"
  Então devo ser redirecionado para a tela do GRANXPERTS
#----------------------------------------------------------------------------------
Redirecionamento Menu - Concurso - CFC
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "CFC"
  Então devo ser redirecionado para a tela do CFC
#----------------------------------------------------------------------------------
Redirecionamento Menu - Concurso - Residência
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "Residência"
  Então devo ser redirecionado para a tela do Residências - Saúde
#----------------------------------------------------------------------------------
Redirecionamento Menu - Concurso - Oficina de Redação
  Dado que estou no institucional
  Quando clico em "Concursos"
  E em "Oficina de Redação"
  Então devo ser redirecionado para a tela do Redação sob medida
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Concurso
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar concurso
  E clico em algum concurso da sessão
  Então devo ser redirecionado para a tela do concurso selecionado
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Concurso - Ver todos os concursos
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar concurso
  E clico em "Ver todos os concursos"
  Então devo ser redirecionado para a tela de Curso por concursos
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Carreira
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Carreira"
  E clico em alguma carreira da sessão
  Então devo ser redirecionado para a tela da carreira selecionada
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Carreira - Ver todas as carreiras
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Carreira"
  E clico em "Ver todas as carreiras"
  Então devo ser redirecionado para a tela de Curso por carreiras
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Estado
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Estado"
  E clico em algum estado da sessão
  Então devo ser redirecionado para a tela dos cursos pelo estado selecionado
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Estado - Ver todos os estados
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Estado"
  E clico em "Ver todos os estados"
  Então devo ser redirecionado para a tela de Curso por estados
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Professor
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Professor"
  E clico em algum professor da sessão
  Então devo ser redirecionado para a tela do professor selecionado
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Professor - Ver todos os professores
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Professor"
  E clico em "Ver todos os professores"
  Então devo ser redirecionado para a tela de Curso por professores
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Banca
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Banca"
  E clico em alguma banca da sessão
  Então devo ser redirecionado para a tela da banca selecionada
#----------------------------------------------------------------------------------
Redirecionamento Menu - Cursos por - Banca - Ver todas as bancas
  Dado que estou no institucional
  Quando clico em "Concursos"
  E na seção "Cursos por" selecionar "Banca"
  E clico em "Ver todas as bancas"
  Então devo ser redirecionado para a tela de Curso por bancas
#----------------------------------------------------------------------------------
Redirecionamento Menu - TSE Unificado
  Dado que estou no institucional
  Quando clico em "TSE Unificado"
  Então devo ser redirecionado para a tela do TSE Unificado
#----------------------------------------------------------------------------------
Redirecionamento Menu - Graduação
  Dado que estou no institucional
  Quando clico em "Graduação"
  Então devo ser redirecionado para a tela da Gran Faculdade - Graduação
#----------------------------------------------------------------------------------
Redirecionamento Menu - MBA
  Dado que estou no institucional
  Quando clico em "MBA"
  Então devo ser redirecionado para a tela da Gran Faculdade - MBA
#----------------------------------------------------------------------------------
Redirecionamento Menu - Pós
  Dado que estou no institucional
  Quando clico em "Pós"
  Então devo ser redirecionado para a tela da Gran Faculdade - Pós
#----------------------------------------------------------------------------------
Redirecionamento Menu - OAB
  Dado que estou no institucional
  Quando clico em "OAB"
  Então devo ser redirecionado para a tela da Gran Faculdade - OAB
#----------------------------------------------------------------------------------
Redirecionamento Menu - Mentorias
  Dado que estou no institucional
  Quando clico em "Mentorias"
  Então devo ser redirecionado para a tela de Mentorias
#----------------------------------------------------------------------------------
Redirecionamento Menu - Conteúdo gratuito - Aulas grátis
  Dado que estou no institucional
  Quando clico em "Conteúdo gratuito"
  E em Aulas grátis
  Então devo ser redirecionado para o calendario de aulas grátis
#----------------------------------------------------------------------------------
Redirecionamento Menu - Conteúdo gratuito - Aulas ao vivo
  Dado que estou no institucional
  Quando clico em "Conteúdo gratuito"
  E em Aulas ao vivo
  Então devo ser redirecionado para o calendario de Aulas ao vivo
#----------------------------------------------------------------------------------
Redirecionamento Menu - Conteúdo gratuito - Material grátis
  Dado que estou no institucional
  Quando clico em "Conteúdo gratuito"
  E em Material grátis
  Então devo ser redirecionado para a listagem de Mateirais gratuitos
#----------------------------------------------------------------------------------
Redirecionamento Menu - Blog
  Dado que estou no institucional
  Quando clico em "Blog"
  Então devo ser redirecionado para o Blog da Gran
#----------------------------------------------------------------------------------
Redirecionamento Menu - Aprovados
  Dado que estou no institucional
  Quando clico em "Aprovados"
  Então devo ser redirecionado para a tela da Gran Aprovados
#----------------------------------------------------------------------------------
Redirecionamento Menu - Questões grátis
  Dado que estou no institucional
  Quando clico em "Questões grátis"
  Então devo ser redirecionado para a tela do Gran Questões 