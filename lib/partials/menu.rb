require 'locales'
require 'names'
require_relative 'table'

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

        def first_option(uf)
            ranking = Names.ranking(uf)
            female_ranking = Names.female_ranking(uf)
            male_ranking = Names.male_ranking(uf)
            puts("==========================Ranking Geral==========================")
            Table.create_ranking(ranking)
            puts("==========================Ranking Feminino==========================")
            Table.create_ranking(female_ranking)
            puts("==========================Ranking Masculino==========================")
            Table.create_ranking(male_ranking)
            puts("====================================================")
        end
    end
end