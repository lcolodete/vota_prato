#encoding: utf-8
nomes = []
nomes[0] = "Fasano"
nomes<<"Fogo de chão"

# forma 1
puts "Percorrendo array com for:"
for nome in nomes 
	puts nome
end

# forma 2
puts "Percorrendo array com each:"
nomes.each do |nome|
	puts nome
end

class Franquia
	def initialize
		@restaurantes = [] 
	end

	def adiciona(*restaurantes)
		puts "Adicionando varios restaurantes de uma so vez"
		for restaurante in restaurantes
			@restaurantes<<restaurante
		end
		
	end

	def mostra
		puts "Mostrando restaurantes da franquia:"
		@restaurantes.each do |restaurante|
			puts restaurante.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end

end

class Restaurante
	attr_accessor :nome

	def fechar_conta(dados)
		puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentario: #{dados[:comentario]}"
	end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de chão"

franquia = Franquia.new
franquia.adiciona restaurante_um,restaurante_dois

franquia.mostra

restaurante_um.fechar_conta :valor=>50, :nota=>9, :comentario=>'Gostei!'

franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end
