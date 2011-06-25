print "digite um numero:"
numero = gets.to_i

begin
	resultado = 100 / numero 
rescue
	puts "Numero digitado invalido!"
	exit
end

puts "100/#{numero} eh #{resultado}"

def verifica_idade(idade)
	unless idade > 18
		raise ArgumentError,"voce precisa ser maior de idade"
	end
end
verifica_idade(19)
