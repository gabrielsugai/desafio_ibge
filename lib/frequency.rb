require 'faraday'
require 'json'
require_relative 'partials/table'

class Frequency
    attr_accessor :name

    def self.of_name(names)
        prepared_names = Frequency.new.prepare_names(names)
        period, frequency = Frequency.new.request_response(prepared_names)
        if period == 0 and frequency == 0
            puts('Infelizmente esse nome não possui dados suficientes, favor informar outro.')
        else
            Partials::Table.create_frequency(names, period, frequency)
        end
    end

    def prepare_names(names)
        aux = ''
        if names.length == 1
            aux = names.first
        elsif names.length >= 2
            names.each do |name|
                aux += "#{name}%7C"
            end
        end
        aux
    end

    def api_request(names)
            response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/#{names}")
            json = JSON.parse(response.body, symbolize_names: true)
    end

    def request_response(names)
        json = api_request(names)
        name_list = []
        period = []
        frequency = []
        if json.length < 1
            return 0,0
        else
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
            return period, frequency
        end
    end
end
