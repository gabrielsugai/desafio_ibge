require './lib/names'

module Partials
    class Table

        def self.create_ranking(names)
            puts("Rank        Nome        Frequencia")
            names.each do |name|
                ranking_spaces = Partials::Table.new.space_count(name.ranking.to_s)
                name_spaces = Partials::Table.new.space_count(name.name)
                puts("#{name.ranking}#{ranking_spaces}#{name.name}#{name_spaces}#{name.frequency}")
            end
        end

        def self.create_frequency(names, period, frequency)
            Partials::Table.new.create_head(names)
            Partials::Table.new.create_body(period, frequency)
        end

        def create_head(names)
            table_head = "Periodo     "
            names.each do |name|
                spaces = Partials::Table.new.space_count(name)
                aux = "#{name}#{spaces}"
                table_head += aux
            end
            puts(table_head)
        end

        def create_body(period, frequency)
            period.each do |decade|
                if decade.length == 5
                    message = "#{decade}       "
                else
                    message = "#{decade} "
                end
                frequency.each do |amount|
                    amount_str = amount.first.to_s
                    spaces = Partials::Table.new.space_count(amount_str)
                    aux = "#{amount.first}#{spaces}"
                    message += aux
                    amount.shift
                end
                puts(message)
                Partials::Table.new.create_bar(message)
            end
        end

        def create_bar(message)
            message_length = message.length
            bar = ''
            for i in 0..(message_length-1) do
                bar += '-'
            end
            puts(bar)
        end

        def space_count(string)
            spaces = ''
            space = ' '
            string_length = string.length
            space_length = 12 - string_length
            for i in 0..(space_length-1) do
                spaces += space
            end
            spaces
        end
    end
end
