require 'locales'

module Partials
    class Menu
        def show_menu
            puts('Digite 1 para verificar o ranking de nomes de uma UF.')
            puts('Digite 2 para verificar o ranking de nomes de um MU.')
            puts('Digite 3 para verificar a frequencia de um nome ao decorer dos anos.')
            puts('Digite 4 para sair.')
        end

        def show_ufs
            ufs = Locales.all
            ufs.each do |uf|
                puts("#{uf.code} - #{uf.name} (#{uf.initials})")
            end
            puts("Digite o codigo de uma UF para verificar os nomes mais utilizados nessa região.")
        end
    end
end