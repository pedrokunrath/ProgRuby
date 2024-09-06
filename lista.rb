class ListaDeTarefas
    def initialize
      @tarefas = []
    end
  
    def adicionar_tarefa(tarefa)
      @tarefas << tarefa
      puts "Tarefa '#{tarefa}' adicionada"
    end
  
    def remover_tarefa(indice)
      if indice < @tarefas.size
        tarefa_removida = @tarefas.delete_at(indice)
        puts "Tarefa '#{tarefa_removida}' removida!"
      else
        puts "Indice invalido."
      end
    end
  
    def mostrar_tarefas
      puts "Suas tarefas:"
      @tarefas.each_with_index do |tarefa, indice|
        puts "#{indice + 1}. #{tarefa}"
      end
    end
  end
  
  lista_de_tarefas = ListaDeTarefas.new
  
  loop do
    puts "\n1. Adicionar Tarefa"
    puts "2. Remover Tarefa"
    puts "3. Mostrar Tarefas"
    puts "4. Sair"
    print "Escolha uma opcao: "
    
    escolha = gets.chomp.to_i
  
    case escolha
    when 1
      print "Digite a tarefa que deseja adicionar: "
      tarefa = gets.chomp
      lista_de_tarefas.adicionar_tarefa(tarefa)
    when 2
      lista_de_tarefas.mostrar_tarefas
      print "Digite o numero da tarefa que deseja remover: "
      indice = gets.chomp.to_i - 1
      lista_de_tarefas.remover_tarefa(indice)
    when 3
      lista_de_tarefas.mostrar_tarefas
    when 4
      puts "Saindo..."
      break
    else
      puts "Opcao invalida. Tente novamente."
    end
  end
  