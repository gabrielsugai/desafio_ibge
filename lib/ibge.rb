require_relative 'partials/menu'
require_relative 'cities'
require_relative 'locales'

option = 0

while option != '4' do
    Partials::Menu.show
    option = gets.chomp
    case option
    when '1'
        Partials::Menu.show_ufs
        uf = gets.chomp
        uf_code = Locales.search_uf(uf)
        Partials::Menu.first_option(uf)
    when '2'
        puts("Digite o nome de uma cidade e a sigla do estado separados por virgula para pesquisar o ranking desse municipio.")
        puts("Exemplo: São Paulo,SP")
        city = gets.chomp
        if city.length == 0
            puts('Erro: Favor não enviar valores nulos.')
        else
            mu_code = Cities.search_mu(city)
            if mu_code != 0
                Partials::Menu.second_option(mu_code)
            else
                puts('')
            end
        end
    when '3'
        puts("Digite o(s) nome(s) desejados para a consulta.")
        puts("Caso deseje consultar mais de um nome por vez, separar os nomes por virgula e sem espaços conforme o exemplo abaixo:")
        puts("maria,jose")
        names = gets.chomp
        if names.length < 1
            puts('Erro: Favor não enviar valores nulos.')
        else
            names = names.split(',')
            names = Partials::Menu.parameterize(names)
            Partials::Menu.third_option(names)
        end
    when '4'
        puts("Obrigado por utilizar o nosso sistema, até a proxima...")
    else
        puts('Opção invalida, favor escolher uma das opções presentes no menu.')
    end
end