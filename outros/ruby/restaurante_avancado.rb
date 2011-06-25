#encoding: utf-8
class Restaurante

	attr_accessor :nota, :nome

	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		@nome = nome
	end

	#declaracao do metodo
	def qualifica(nota)
		puts "A nota do restaurante foi #{nota}."
	end
	def qualifica(msg="Obrigado")
		puts "A nota do restaurante #{@nome} foi #{@nota}. #{msg}"
	end

	#propriedades
=begin
	def nota=(nota)
		@nota = nota
	end

	def nota
		@nota
	end
=end
end

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de chão")

restaurante_um.nota=10
restaurante_dois.nota=1

#chamada do metodo
restaurante_um.qualifica
restaurante_dois.qualifica("Comida ruim.")
#self.send(:qualifica, "oi")

class Fixnum
	def +(outro)
		self - outro # fazendo a soma subtrair
	end
end

puts 1.+(1)
puts 1+1
puts 1+2
