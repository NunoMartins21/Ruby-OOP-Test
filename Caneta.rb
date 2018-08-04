class Caneta

	attr_accessor :cor
	attr_reader :marca, :forma, :tapada

	def initialize(cor, marca, forma)
		@tapada = false
		@cor = cor
		@marca = marca
		@forma = forma
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
			puts "Estou a escrever."
		end
	end
end