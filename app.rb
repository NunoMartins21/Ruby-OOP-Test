require_relative "Caneta"

c1 = Caneta.new("azul", "BIC", "padrão")

c1.escrever
c1.estado

puts "====="

c2 = Caneta.new("preta", "Stabilo", "grossa")

c2.escreverFrase("Olá, eu sou uma caneta!")
c2.cor = "verde"
c2.estado

puts "====="

c3 = Caneta.new("vermelha", "Faber-Castell", "fina")

c3.tapar
c3.escrever
c3.destapar
c3.escreverFrase("Olá, eu sou uma caneta #{c3.forma}!")
c3.escrever
c3.estado
c3.recarregar
c3.estado