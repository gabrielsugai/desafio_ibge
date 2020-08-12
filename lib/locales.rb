require 'faraday'
require 'json'
require 'sqlite3'
require_relative 'partials/requests'

class Locales
    attr_accessor :code, :name, :initials
    def initialize(code, name, initials)
        @code = code
        @name = name
        @initials = initials
    end

    def self.all
        json = Requests.ufs
        json.map do |uf|
            uf = new(uf[:id], uf[:nome], uf[:sigla].downcase)
        end
    end

    def self.list_uf
        db = SQLite3::Database.open 'db/database.db'
        db.execute "SELECT * FROM UF"
    end

    def self.search_uf(initials)
        db = SQLite3::Database.open 'db/database.db'
        result = db.execute "SELECT code FROM UF WHERE initials='#{initials.downcase}'"
        result.flatten.first
    end
end
