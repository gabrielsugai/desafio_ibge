require_relative 'partials/menu'

option = 0

while option != '4' do
    Partials::Menu.show
    option = gets.chomp
    case option
    when '1'
        Partials::Menu.show_ufs
        uf = gets.chomp
        Partials::Menu.first_option(uf)
    when '2'
        puts("Digite o codigo de um MU para verificar os nomes mais utilizados nessa região.")
        mu = gets.chomp
        Partials::Menu.second_option(mu)
    when '3'
        puts("Digite o(s) nome(s) desejados para a consulta.")
        puts("Caso deseje consultar mais de um nome por vez, separar os nomes por virgula e sem espaços conforme o exemplo abaixo:")
        puts("maria,jose")
        names = gets.chomp
        names = names.split(',')
        Partials::Menu.third_option(names)
    when '4'
        puts("Obrigado por utilizar o nosso sistema, até a proxima...")
    else
        puts('Opção invalida, favor escolher uma das opções presentes no menu.')
    end
end