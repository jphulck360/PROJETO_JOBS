# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

################# IMPLEMENTAÇÃO #################

==================================================================================

<!--
<table>
	<tr>
  		<td></td>
	</tr>
</table>
-->

* OBS: Gerando com MySql.

# rails new PROJETO_JOBS -d mysql

# rails g devise:install

# rails g devise user

# rails g scaffold user nome:string telefone:string cpf:string idade:integer dt_nasc:date pontuacao:integer qtd_servicos:integer ativa_perfil_trab:integer

# rails db:create

# rails db:migrate

### rails generate controller user index => DEPENDE DO CONTEXTO !!!


# GERAR BOOTSTRAP
# rails generate bootstrap:install


# GERAR MODELS
# rails g scaffold profile perfil:string
# rails g scaffold phone telefone:string tipo:string
# rails g scaffold language nome:string
# rails g scaffold message msg:string data:date hora:time status:integer
# rails g scaffold curriculum status:integer
# rails g scaffold job valor:float dt_inicial:date dt_final:date solicitacao:string status:integer descricao:string
# rails g scaffold career nome:string
# rails g scaffold course nome:string instituicao:string data_inicial:date data_final:date
# rails g scaffold experience empresa:string data_inicial:date data_final:date descricao:string
# rails g scaffold curriculum_language
# rails g scaffold curriculum_course

# Excluir scaffold
# rails destroy scaffold curriculum_phone

# GERAR PAPERCLIP DAS MODELS
# rails g paperclip career foto_c
# rails g paperclip curriculum foto_curr


=========================================================================================
# FUNCIONAMENTO

### 1 - Funções iniciais

1.1) O usuário preenche seu currículo.
1.2) O usuário disponibiliza seu perfil.
1.3) O usuário ativa seu perfil.



### 2 - Escolha de Função

- O Usuário pode CONTRATAR um serviço, ou OFERECER seu serviço.

2.1) CONTRATANTE

2.1.1) O link de 'PESQUISAR SERVIÇO' fica disponível para o usuário.

2.1.2) Caso o usuário clique, será levado à tela de pesquisa para saber por qual ordem deseja contratar o serviço.

2.1.3) O usuário seleciona o tipo de serviço (career_id - tabela Career), podendo escolher outra opção para melhorar sua busca.
As opções são por: 
	- pontuação (de 1 a 5 - tabela Users),
	- cidade

2.1.4) São listados os determinados perfis.

2.1.5) O usuário escolhe UM. É enviada uma SOLICITAÇÃO ao PRESTADOR do serviço. É preenchido os seguintes campos:
	- valor (tabela JOBS)
	- descrição


2.1.6) Ao receber a solicitação, o PRESTADOR do serviço pode ACEITAR ou RECUSAR a SOLICITAÇÃO.
	- Caso ACEITE
		'solicitacao' fica igual a -> 'OK'
		'dt_inicial' -> data_atual

	- Caso RECUSAR
		'solicitacao' -> 'RECUSADO'
		Encerra solicitação!


2.1.7) Levando pelo contexto de caso o PRESTADOR aceitar a oferta. 

	2.1.7.1) O SOLICITANTE poderá manter diálogo com o PRESTADOR através de mensagens.

	2.1.7.2) Depois que o serviço foi finalizado:
	
		- O PRESTADOR entrará na aba 

		'dt_final' -> data_atual
		 solicitacao -> 'FINALIZADO'
		 status -> 1

