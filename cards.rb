INSERIR = 1
IMPRIMIR = 2
BUSCAR = 3
SAIR = 4

def menu
    puts "Digite a opção desejada: "
    puts
    puts "[1] Inserir um novo card"
    puts "[2] Exibir todos os cards"
    puts "[3] Buscar um card"
    puts "[4] Sair"
    puts
    print 'Escolha uma opção: '
    return gets.to_i  
end

def inserir_idiomas
  puts 'Insira uma expressão em Português:'
  portugues = gets.chomp
  puts 'Insira uma expressão em Inglês:'
  ingles = gets.chomp
  card = { portugues: portugues,  ingles: ingles }
  return card
end

def cards_inseridos(cards)
    puts "Aqui estão todos os cards inseridos no sistema:"
    puts "Português: #{cards[:portugues]} || Inglês: #{cards[:ingles]}"
end

def imprime_cards(cartao)
  puts "Card em Português =>> #{cartao[:portugues]} | Card em Inglês =>> #{cartao[:ingles]}" 
end

def filtrar_idioma
  puts "Em qual idioma deseja procurar?"
  puts "[p] Português" 
  puts "[i] Inglês"
  buscar_idioma = gets.chomp.upcase
  return buscar_idioma
end

def verificar_texto
  print "digite seu card:"
  texto_busca = gets.chomp
  return texto_busca
end

cards = []

puts 'Bem vindo ao Cards System'
puts
opcao = menu

while opcao != SAIR
  if opcao == INSERIR
    c = inserir_idiomas
     cards_inseridos(c)
    cards << c 

  elsif opcao == IMPRIMIR
    cards.each do |card|
     imprime_cards(card)
    end

  elsif opcao == BUSCAR
     filtrar = filtrar_idioma
     verificar = verificar_texto

    cards.each do |c|
      if filtrar == "P"
        if c[:portugues].include?(verificar)
         imprime_cards(c)
        end
      elsif filtrar == "I"
        if c[:ingles].include?(verificar)
          imprime_cards(c)
        end
      else
        puts "opção inválida."
      end
    end

  else
    puts 'entre com uma opcao válida'
    puts
  end
  opcao = menu
end


# criar card como obejto
# verficar se o card já existe 
# include só por inglês ou português
# Garantir que não crie um card duplicado com um comparação  