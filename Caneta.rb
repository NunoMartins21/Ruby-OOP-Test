class Caneta

	attr_accessor :cor
	attr_reader :marca, :forma, :tapada

	def initialize(cor, marca, forma)
		@tapada = false
		@cor = cor
		@marca = marca
		@forma = forma
		@carga = 100.0
	end

	def tapar
		@tapada = true
	end

	def destapar
		@tapada = false
	end

	def escrever
		if @tapada
			puts "Impossivel escrever"
		else
			@carga = @carga - 2.5
			puts "Estou a escrever com a cor #{@cor}"
		end
	end

	def escreverFrase(txt)
		if @tapada
			puts "Impossível escrever"
		else
			@carga = @carga - 2.5
			puts txt
		end
	end

	def recarregar
		if @carga < 100
			@carga = 100
		else
			puts "Carga no seu máximo"
		end
	end

	def estado
		puts self.inspect
	end
end