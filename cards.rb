def imprime_card(cartao)
  puts "Card =>> #{cartao[:portugues]} | Card =>> #{cartao[:ingles]} encontrado" 
end

def menu()
    puts "Digite a opção desejada"
    puts "[1] Inserir um novo card"
    puts "[2] Exibir todos os cards"
    puts "[3] Buscar um card"
    puts "[4] Sair"
    puts
    print 'Escolha uma opção: '
    return gets.to_i  
end
cards = []

puts 'Bem vindo ao Cards System'
opcao = menu()

while opcao != 4
  if opcao == 1
    puts 'Insira uma expressão em Português:'
    portugues = gets.chomp
    puts 'Insira uma expressão em Ingles:'
    ingles = gets.chomp
    card = { portugues: portugues,  ingles: ingles }
    cards << card 
    puts "Você inseriu o card: #{card} " 
    puts

  elsif opcao == 2
    puts "Aqui estão todos os cards cadastrados: "
    puts cards

  elsif opcao == 3
    puts  "Em qual idioma deseja procurar?"
    puts "[p] Português"
    puts "[i] Inglês"
    buscar_idioma = gets.chomp.upcase

    print "digite seu card: "
    texto_busca = gets.chomp


    cards.each do |c|
      if buscar_idioma == "P"
        if c[:portugues].include? texto_busca
         imprime_card(c)
        end
      elsif 
        if c[:ingles].include? texto_busca
          imprime_card(c)
        end
      else
        puts "opção inválida."
      end
    end

  else
    puts 'entre com uma opcao válida'
    puts
  end
  opcao = menu()
end