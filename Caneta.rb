class Caneta

	@tapada = false

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