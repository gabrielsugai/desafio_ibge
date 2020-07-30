require './lib/names'

module Partials
    class Table

        def self.create_ranking(names)
            puts("Rank  Nome     Frequencia")
            names.each do |name|
                puts("#{name.ranking} - #{name.name} -     #{name.frequency}")
            end
        end
    end
end