# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	Destino.delete_all
    3.times do |i|
      Destino.create(title: "Cidade ##{i}", desc: "Descricão da cidade", dias: "5", cidade: "Cidade ##{i}", tipo: "nacional",
      				sinfo_title: "PACOTE RIO DE Cidade ##{i}", sinfo_subtitle: "Novas emoções", sinfo_tipo: "Pacote", sinfo_categoria: "Promoçao", fotoid: "eijzfdnioemvernqolnc", 
      				sinfo_price: "835", sinfo_desc: "O Rio de Janeiro é uma daquelas cidades ensolaradas, que seduzem despretensiosamente os seus admiradores, logo à primeira vista. Não por acaso ostenta o título de cidade maravilhosa, afinal graças à simpatia divina, o Rio de Janeiro já era um paraíso ecológico perdido em meio ao centro urbano, antes mesmo que se falasse em ecologia..")
  	end

  	3.times do |i|
      Destino.create(title: "Internacional ##{i}", desc: "Descricão da cidade Internacional", dias: "5", cidade: "Internacional ##{i}", tipo: "internacional",
      				sinfo_title: "PACOTE RIO DE Cidade ##{i}", sinfo_subtitle: "Novas emoções", sinfo_tipo: "Pacote", sinfo_categoria: "Promoçao", fotoid: "lta7gdotnaowmjpmn1gu",
      				sinfo_price: "835", sinfo_desc: "O Rio de Janeiro é uma daquelas cidades ensolaradas, que seduzem despretensiosamente os seus admiradores, logo à primeira vista. Não por acaso ostenta o título de cidade maravilhosa, afinal graças à simpatia divina, o Rio de Janeiro já era um paraíso ecológico perdido em meio ao centro urbano, antes mesmo que se falasse em ecologia..")
  	end

    #Criando usuario do Johnathan
    
    if Admin.where(email: 'magalhaes@paths.com.br').empty?
      
      Admin.create(email: 'magalhaes@paths.com.br', password: 'pathsfm1', password_confirmation: 'pathsfm1', 
                   first_name: 'Johnathan', last_name: 'Magalhaes')
    end

    #Criando usuario do Blenno

    if Admin.where(email: 'blenno@live.com').empty?

      Admin.create(email: 'blenno@live.com', password: '@nn1327147', password_confirmation: '@nn1327147', 
                   first_name: 'Blenno', last_name: 'Cleofas Pardim')

    end
