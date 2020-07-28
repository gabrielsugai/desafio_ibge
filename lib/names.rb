#https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=35 raking de nomes por UF
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

    def self.ranking_uf(code)
        result = []
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}")
        json = JSON.parse(response.body, symbolize_names: true)
        json = json.first.with_indifferent_access.fetch("res")
        result = json.map do |name|
            name = new(name[:nome], name[:frequencia], name[:ranking])
        end
        result
    end
end