class Franquia
	def info
		puts "Restaurante faz parte da franquia"
	end
end

class Restaurante < Franquia
	def info
		super
		puts "Restaurante Fasano"
	end
end

def informa(franquia)
	franquia.info
end

restaurante = Restaurante.new
#restaurante.info
informa restaurante

class Relatorio
    def imprime
        imprime_cabecalho
        imprime_conteudo
    end
end

class RelatorioHTML < Relatorio
    def imprime_cabecalho
        puts "<html>"
    end
    def imprime_conteudo
        puts "Dados do relatorio"
    end
end

class RelatorioTexto < Relatorio
    def imprime_cabecalho
        puts "***"
    end
    def imprime_conteudo
        puts "Dados do relatorio"
    end
end

relatorio = RelatorioHTML.new
relatorio.imprime

relatorio = RelatorioTexto.new
relatorio.imprime





