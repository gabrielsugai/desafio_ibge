require 'faraday'
require 'json'
require_relative 'partials/requests'
class Cities
    attr_accessor :code, :name, :uf_initials
    def initialize(code, name, uf_initials)
        @code = code
        @name = name
        @uf_initials = uf_initials
    end
    def self.all
        json = Requests.cities
        json.map do |mu|
            uf = new(mu[:id], mu[:nome], mu[:microrregiao][:mesorregiao][:UF][:sigla].downcase)
        end
    end

    def self.search_mu(name)
        mu,uf = name.split(',')
        db = SQLite3::Database.open 'db/database.db'
        result = db.execute "SELECT code FROM MU WHERE title like '%#{mu.downcase}' AND uf like '%#{uf.downcase}'"
        if result.length < 1
            puts('Cidade não encontrada, favor verificar se o nome está correto.')
            return 0
        else
            result.flatten.first
        end
    end

end