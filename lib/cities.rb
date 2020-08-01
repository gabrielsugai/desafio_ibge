require 'faraday'
require 'json'
class Cities
    attr_accessor :code, :name, :uf_initials
    def initialize(code, name, uf_initials)
        @code = code
        @name = name
        @uf_initials = uf_initials
    end
    def self.all
        result = []
        mu_list = []
        response = Faraday.get('https://servicodados.ibge.gov.br/api/v1/localidades/municipios')
        json = JSON.parse(response.body, symbolize_names: true)
        result = json.map do |mu|
            uf = new(mu[:id], mu[:nome], mu[:microrregiao][:mesorregiao][:UF][:sigla])
        end
        result.each do |mu|
            mu_list << [mu.code, mu.name.downcase, mu.uf_initials.downcase]
        end
        mu_list
    end

    def self.search_mu(name)
        mu,uf = name.split(',')
        db = SQLite3::Database.open 'db/database.db'
        result = db.execute "SELECT code FROM MU WHERE title='#{mu.downcase}' AND uf='#{uf.downcase}'"
        if result.length < 1
            puts('Cidade não encontrada, favor verificar se o nome está correto.')
            return 0
        else
            result.flatten.first
        end
    end

end