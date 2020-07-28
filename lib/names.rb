#https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=35&sexo=F
require 'faraday'
require 'json'
class Names
    attr_accessor :name, :frequency, :ranking
    def initialize(name, frequency, ranking)
        @name = name
        @frequency= frequency
        @ranking = ranking
    end

    def self.ranking(code)
        result = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}")
        json = JSON.parse(response.body, symbolize_names: true)
        json = json.first.with_indifferent_access.fetch("res")
        result = json.map do |name|
            name = new(name[:nome], name[:frequencia], name[:ranking])
        end
        result
    end

    def self.female_ranking(code)
        result = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}&sexo=F")
        json = JSON.parse(response.body, symbolize_names: true)
        json = json.first.with_indifferent_access.fetch("res")
        result = json.map do |name|
            name = new(name[:nome], name[:frequencia], name[:ranking])
        end
        result
    end

    def self.male_ranking(code)
        result = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}&sexo=M")
        json = JSON.parse(response.body, symbolize_names: true)
        json = json.first.with_indifferent_access.fetch("res")
        result = json.map do |name|
            name = new(name[:nome], name[:frequencia], name[:ranking])
        end
        result
    end
end
