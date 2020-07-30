require './lib/locales'
require './lib/names'
require_relative 'table'
require './lib/frequency'

module Partials
    class Menu
        def self.show
            puts('Digite 1 para verificar o ranking de nomes de uma UF.')
            puts('Digite 2 para verificar o ranking de nomes de um MU.')
            puts('Digite 3 para verificar a frequencia de um nome ao decorer dos anos.')
            puts('Digite 4 para sair.')
            puts('')
        end

        def self.show_ufs
            ufs = Locales.all
            ufs.each do |uf|
                puts("#{uf.code} - #{uf.name} (#{uf.initials})")
            end
            puts("Digite o codigo de uma UF para verificar os nomes mais utilizados nessa região.")
        end

        def self.first_option(uf)
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

        def self.second_option(mu)
            ranking = Names.ranking(mu)
            female_ranking = Names.female_ranking(mu)
            male_ranking = Names.male_ranking(mu)
            puts("==========================Ranking Geral==========================")
            Table.create_ranking(ranking)
            puts("==========================Ranking Feminino==========================")
            Table.create_ranking(female_ranking)
            puts("==========================Ranking Masculino==========================")
            Table.create_ranking(male_ranking)
            puts("====================================================")
        end

        def self.third_option(names)
            Frequency.of_name(names)
        end
    end
end