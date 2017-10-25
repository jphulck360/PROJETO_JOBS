# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CurriculumCourse.delete_all
CurriculumLanguage.delete_all
Job.delete_all
Experience.delete_all
Curriculum.delete_all
User.delete_all
Career.delete_all
Course.delete_all
Profile.delete_all
Phone.delete_all
Language.delete_all



Profile.create!(id:1, perfil:1) # ADM
Profile.create!(id:2, perfil:2) # COMUM



User.create!(
	nome:'ADM',
	email:'jphulck3602@gmail.com',
	cpf: '000.000.000-00',
	idade: 30,
	dt_nasc: '1987/06/01',
	cidade:'PORTO ALEGRE',
	endereco: 'RUA A',
	pontuacao: 0,
	profile_id: 1,
	qtd_prestados: 0,
	qtd_solicitados: 0,
	ativa_perfil_trab: 0,
	password: '102030',
	password_confirmation: '102030'
)

User.create!(
	nome:'DELTA',
	email:'admdelta@admdelta.com.br',
	cpf: '111.000.111-01',
	idade: 50,
	dt_nasc: '1957/06/01',
	cidade:'PORTO ALEGRE',
	endereco: 'RUA C',
	pontuacao: 0,
	profile_id: 2,
	qtd_prestados: 0,
	qtd_solicitados: 0,
	ativa_perfil_trab: 0,
	password: '102030',
	password_confirmation: '102030'
)



Career.create!(nome: 'Padeiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/baker.png"))
Career.create!(nome: 'Carregador de Malas', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/bellhop.png"))
Career.create!(nome: 'Segurança', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/bodyguard.png"))
Career.create!(nome: 'Operador de Máquinas', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/builder.png"))
Career.create!(nome: 'Empresário', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/businessman.png"))
Career.create!(nome: 'Atendente', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/call-center.png"))
Career.create!(nome: 'Capitão', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/captain.png"))
Career.create!(nome: 'Carpinteiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/carpenter.png"))
Career.create!(nome: 'Pedreiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/construction-worker.png"))
Career.create!(nome: 'Cozinheiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/cook.png"))
Career.create!(nome: 'Entregador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/curier.png"))
Career.create!(nome: 'Demonstrador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/demostration-1.png"))
Career.create!(nome: 'Dentista', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/dentist.png"))
Career.create!(nome: 'Designer', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/designer.png"))
Career.create!(nome: 'Mergulhador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/diver.png"))
Career.create!(nome: 'Doutor', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/doctor.png"))
Career.create!(nome: 'Costureira', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/dressmaker.png"))
Career.create!(nome: 'Motorista', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/driver.png"))
Career.create!(nome: 'Bombeiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/fireman.png"))
Career.create!(nome: 'Jardineiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/gardener.png"))
Career.create!(nome: 'Cabeleireiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/hairdresser.png"))
Career.create!(nome: 'Empregada', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/housekeeper.png"))
Career.create!(nome: 'Limpador de Calçada', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/landkeeper.png"))
Career.create!(nome: 'Minerador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/miner.png"))
Career.create!(nome: 'Carregador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/mover.png"))
Career.create!(nome: 'Músico', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/musician.png"))
Career.create!(nome: 'Fotógrafo', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/photographer.png"))
Career.create!(nome: 'Piloto', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/pilot.png"))
Career.create!(nome: 'Programador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/programmer.png"))
Career.create!(nome: 'Recepcionista', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/receptionist.png"))
Career.create!(nome: 'Marinheiro', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/sailor.png"))
Career.create!(nome: 'Professor de Artes Marciais', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/sesei.png"))
Career.create!(nome: 'Auxiliar de Compras', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/shopping.png"))
Career.create!(nome: 'Cantor', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/singer.png"))
Career.create!(nome: 'Aeromoça', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/stewardess.png"))
Career.create!(nome: 'Auxiliar de Estudos', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/student.png"))
Career.create!(nome: 'Cirurgião', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/surgery.png"))
Career.create!(nome: 'Professor', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/teacher.png"))
Career.create!(nome: 'Garçom', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/waiter.png"))
Career.create!(nome: 'Soldador', :foto_c => File.new("#{Rails.root}/app/assets/images/ICONES/welder.png"))



Course.create!(nome:'ARTE')
Course.create!(nome:'AGROPECUÁRIA')
Course.create!(nome:'ARQUITETURA')
Course.create!(nome:'ARTES CÊNICAS')
Course.create!(nome:'ANTROPOLOGIA')
Course.create!(nome:'ADM EMPRESAS')
Course.create!(nome:'ARQUEOLOGIA')
Course.create!(nome:'ADM E GESTÃO')
Course.create!(nome:'BIOMEDICINA')
Course.create!(nome:'BIBLIOTECNOLOGIA')
Course.create!(nome:'BIOQUÍMICA')
Course.create!(nome:'BIOTECNOLOGIA')
Course.create!(nome:'BIOLOGIA')
Course.create!(nome:'COMUNICAÇÃO')
Course.create!(nome:'CIÊNCIAS DA COMPUTAÇÃO')
Course.create!(nome:'CIÊNCIAS DA EDUCAÇÃO')
Course.create!(nome:'CIÊNCIAS POLÍTICAS')
Course.create!(nome:'CIÊNCIAS SOCIAIS')
Course.create!(nome:'CIÊNCIAS NATURAIS')
Course.create!(nome:'CONTABILIDADE')
Course.create!(nome:'CIÊNCIAS ECONÔMICAS')
Course.create!(nome:'COMÉRCIO EXTERIOR')
Course.create!(nome:'CIÊNCIA DA INFORMAÇÃO')
Course.create!(nome:'CIÊNCIA FORENSE')
Course.create!(nome:'CIÊNCIA DO ESPORTE')
Course.create!(nome:'CIÊNCIAS EMPRESARIAIS')
Course.create!(nome:'CIÊNCIA DO DESPORTO')
Course.create!(nome:'CRIMINOLOGIA')
Course.create!(nome:'CIÊNCIAS AMBIENTAIS')
Course.create!(nome:'DIREITO')
Course.create!(nome:'DESENHO E URBANISMO')
Course.create!(nome:'DESIGN GRÁFICO')
Course.create!(nome:'ENG ELÉTRICA')
Course.create!(nome:'EDU FÍSICA')
Course.create!(nome:'ENFERMAGEM')
Course.create!(nome:'ENG AGRONÔMICA')
Course.create!(nome:'ENG AUTOMAÇÃO')
Course.create!(nome:'ENG COMPUTAÇÃO')
Course.create!(nome:'ENG ELETRÔNICA')
Course.create!(nome:'ENG INDUSTRIAL')
Course.create!(nome:'ENG MECÂNICA')
Course.create!(nome:'ECONOMIA')
Course.create!(nome:'ESTATÍSTICA')
Course.create!(nome:'ENG GEOLÓGICA')
Course.create!(nome:'ENG GEOGRÁFICA')
Course.create!(nome:'ENG CIVIL')
Course.create!(nome:'ELETROMECÂNICA')
Course.create!(nome:'ENG AMBIENTAL')
Course.create!(nome:'ENG SISTEMAS')
Course.create!(nome:'ENG MILITAR')
Course.create!(nome:'ENG MECATRÔNICA')
Course.create!(nome:'ENG MÚSICA')
Course.create!(nome:'EDUCAÇÃO SOCIAL')
Course.create!(nome:'ENG MARÍTIMA E DOS TRANSPORTES')
Course.create!(nome:'INGLÊS')
Course.create!(nome:'ENG QUÍMICA')
Course.create!(nome:'ESPANHOL')
Course.create!(nome:'ENG AGRÍCOLA E RURAL')
Course.create!(nome:'ENG CONSTRUÇÃO')
Course.create!(nome:'ENG FLORESTAL')
Course.create!(nome:'FÍSICA')
Course.create!(nome:'FILOSOFIA')
Course.create!(nome:'FISIOTERAPIA')
Course.create!(nome:'FARMÁCIA')
Course.create!(nome:'GEOGRAFIA')
Course.create!(nome:'GESTÃO JURÍDICA')
Course.create!(nome:'GESTÃO AMBIENTAL')
Course.create!(nome:'HISTÓRIA')
Course.create!(nome:'JORNALISMO')
Course.create!(nome:'LOGÍSTICA')
Course.create!(nome:'LITERATURA')
Course.create!(nome:'MATEMÁTICA')
Course.create!(nome:'MARKETING')
Course.create!(nome:'MEC INDUSTRIAL')
Course.create!(nome:'MEDICINA')
Course.create!(nome:'MECATRÔNICA')
Course.create!(nome:'METEOROLOGIA')
Course.create!(nome:'MÚSICA')
Course.create!(nome:'NUTRIÇÃO')
Course.create!(nome:'NEGÓCIOS INTERNACIONAIS')
Course.create!(nome:'ODONTOLOGIA')
Course.create!(nome:'OCEANOGRAFIA')
Course.create!(nome:'PUBLICIDADE')
Course.create!(nome:'PSICOLOGIA')
Course.create!(nome:'PEDAGOGIA')
Course.create!(nome:'QUÍMICA')
Course.create!(nome:'RP')
Course.create!(nome:'RH')
Course.create!(nome:'SOCIOLOGIA')
Course.create!(nome:'SERVIÇO SOCIAL')
Course.create!(nome:'TEOLOGIA')
Course.create!(nome:'TEC LAB BIOMÉTRICO')
Course.create!(nome:'TRABALHO SOCIAL')
Course.create!(nome:'TURISMO')
Course.create!(nome:'TEATRO')
Course.create!(nome:'VETERINÁRIA')
Course.create!(nome:'OUTRO')



Language.create!(nome:'INGLÊS')
Language.create!(nome:'PORTUGUÊS')
Language.create!(nome:'ESPANHOL')
Language.create!(nome:'BELGA')
Language.create!(nome:'ALEMÃO')
Language.create!(nome:'FRANCÊS')
Language.create!(nome:'ITALIANO')
Language.create!(nome:'JAPONÊS')
Language.create!(nome:'RUSSO')
Language.create!(nome:'ÁRABE')
Language.create!(nome:'MANDARIM')