
def gerar_senha(tamanho = 12)
    caracteres = [('a'..'z'), ('A'..'Z'), ('0'..'9'), ['!', '@', '#', '$', '%', '^', '&', '*']].map(&:to_a).flatten
    senha = (0...tamanho).map { caracteres[rand(caracteres.length)] }.join
    senha
  end
  
  puts "Digite o tamanho da senha que deseja (padrão: 12): "
  tamanho = gets.chomp.to_i
  tamanho = 12 if tamanho == 0
  
  puts "Sua senha gerada he: #{gerar_senha(tamanho)}"
  