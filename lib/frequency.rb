require 'faraday'
require 'json'

class Frequency
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def self.of_name(names)
        aux = ''
        if names.length == 1
            aux = names.first
        elsif names.length >= 2
            names.each do |name|
                aux += "#{name}%7C"
            end
        end
        name_list = []
        period = []
        frequency = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/#{aux}")
        json = JSON.parse(response.body, symbolize_names: true)
        json.each do |name_frequency|
            name_list << name_frequency[:res]
        end
        name_list.first.each do |name|
            period << name[:periodo]
        end
        name_list.each do |name|
            aux_list = []
            name.each do |x|
                aux_list << x[:frequencia]
            end
            frequency << aux_list
        end
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
