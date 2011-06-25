class Turma

	include Enumerable

	def initialize(*nomes)

		@alunos = []

		for nome in nomes
			@alunos<<nome
		end

		#@alunos = @alunos.sort
		#@alunos.sort!
		
	end

	def each
		puts "usando each..."
		for nome in @alunos
			yield nome
		end
	end
	
	def mostraAlunos
		puts "mostraAlunos2"
		@alunos.each do |aluno|
			puts aluno
		end
		return 
	end

end

fj91 = Turma.new("Guilherme","Paulo","Paniz","Jose","Adao")

puts "Lista ordenada"
puts fj91.sort
puts "chamada a drop(4)"
puts fj91.drop(4)
puts "imprimindo alunos"
puts fj91.mostraAlunos

#fj91.each do |nome|
#	puts nome
#end
