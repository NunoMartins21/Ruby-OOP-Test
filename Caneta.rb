class Caneta

	attr_accessor :cor
	attr_reader :marca, :forma, :tapada

	# Método construtor
	# Aceita os parâmetros cor, marca e forma
	# Inicializa os atributos @tapada, @cor, @marca, @forma e @carga
	def initialize(cor, marca, forma)
		@tapada = false
		@cor = cor
		@marca = marca
		@forma = forma
		@carga = 100.0
	end

	# Método tapar()
	# Muda o valor do atributo @tapada para true
	def tapar
		@tapada = true
	end

	# Método destapar()
	# Muda o valor do atributo @tapada para false
	def destapar
		@tapada = false
	end

	# Método escrever()
	# Exibe o texto "Estou a escrever com a cor #{@cor}", no caso do atributo @tapada ser false
	# Inclui sistema de perda de carga a cada escrita
	def escrever
		if @tapada
			puts "Impossivel escrever"
		else
			@carga = @carga - 2.5
			puts "Estou a escrever com a cor #{@cor}"
		end
	end

	# Método escreverFrase(txt)
	# Exibe um texto personalizado, no caso do atributo @tapada ser false
	# Inclui sistema de perda de carga a cada escrita
	def escreverFrase(txt)
		if @tapada
			puts "Impossível escrever"
		else
			@carga = @carga - 2.5
			puts txt
		end
	end

	# Método recarregar()
	# Recarrega a carga de volta aos 100% originais
	def recarregar
		if @carga < 100
			@carga = 100
		else
			puts "Carga no seu máximo"
		end
	end

	# Método estado()
	# Exibe o estado do objeto recorrendo ao método inspect() da classe Object
	def estado
		puts self.inspect
	end
end