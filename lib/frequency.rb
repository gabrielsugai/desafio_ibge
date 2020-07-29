require 'faraday'
require 'json'

class Frequency
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def self.of_name(name)
        result = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/#{name}")
        json = JSON.parse(response.body, symbolize_names: true)
        json = json.first[:res]
        puts("|  Periodo     |   #{name} |")
        json.each do |data|
            if data[:periodo].length == 5
                puts("    #{data[:periodo]}      |   #{data[:frequencia]}")
            else
                puts(" #{data[:periodo]}   |   #{data[:frequencia]}")
            end
        end
    end
end
