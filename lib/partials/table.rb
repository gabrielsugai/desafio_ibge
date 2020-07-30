require './lib/names'

module Partials
    class Table

        def self.create_ranking(names)
            puts("Rank  Nome     Frequencia")
            names.each do |name|
                puts("#{name.ranking} - #{name.name} -     #{name.frequency}")
            end
        end

        def self.create_frequency(names, period, frequency)
            table_head = "| Periodo   "
            names.each do |name|
                aux = "  #{name} "
                table_head += aux
            end
            table_head += "|"
            puts(table_head)

            period.each do |decade|
                if decade.length == 5
                    message = "    #{decade}    "
                else
                    message = " #{decade} "
                end
                frequency.each do |amount|
                    aux = "  #{amount.first}"
                    message += aux
                    amount.shift
                end
                puts(message)
            end
        end
    end
end