#encoding: utf-8

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

	def info
		puts "Restaurante faz parte da franquia"
	end

    def expandir(restaurante)
        def restaurante.cadastrar_vips
            puts "Restaurante #{self.nome} agora com area vip!"
        end
        
    end

    def method_missing(name, *args)
        @restaurantes.each do |r|
            return "O Restaurante #{r.nome} ja foi cadastrado!" if r.nome.eql? *args
        end
        return "O restaurante #{args[0]} nao foi cadastrado ainda."
    end
end

class Restaurante < Franquia

	attr_accessor :nota, :nome

	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		@@total ||= 0
		@@total = @@total + 1
		puts "Restaurantes criados: #{@@total}"
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

	#def self.relatorio
	#	puts "Foram criados #{@@total} restaurantes" 
	#end

	#outra forma de declarar metodo de classe
	class << self
		def relatorio
			puts "Foram criados #{@@total} restaurantes!" 
		end
	end

end

class Relatorio
	#nao eh synchronized
	@@instance = Relatorio.new
	def self.instance
		return @@instance
	end
	private_class_method :new
end

#ambos os relatorios referenciam o mesmo objeto
relatorio1 = Relatorio.instance
relatorio2 = Relatorio.instance

puts relatorio1 == relatorio2

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de chão")

restaurante_um.nota=10
restaurante_dois.nota=1

#chamada do metodo
restaurante_um.qualifica
restaurante_dois.qualifica("Comida ruim.")

Restaurante.relatorio

franquia = Franquia.new
franquia.adiciona restaurante_um,restaurante_dois

franquia.mostra


franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

puts franquia.ja_cadastrado?("Fasano")
puts franquia.ja_cadastrado?("Boteco")
