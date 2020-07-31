#https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/municipios < municipios de uma uf
#https://servicodados.ibge.gov.br/api/v1/localidades/estados < todos os estados
require 'faraday'
require 'json'
class Locales
    attr_accessor :code, :name, :initials
    def initialize(code, name, initials)
        @code = code
        @name = name
        @initials = initials   
    end

    def self.all
        uf_list = []
        result = []
        response = Faraday.get('https://servicodados.ibge.gov.br/api/v1/localidades/estados')
        json = JSON.parse(response.body, symbolize_names: true)
        result = json.map do |uf|
            uf = new(uf[:id], uf[:nome], uf[:sigla])
        end
        result.each do |uf|
            uf_list << [uf.code, uf.name, uf.initials.downcase]
        end
        uf_list
    end
end
