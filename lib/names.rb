require 'faraday'
require 'json'
require_relative 'partials/requests'
class Names
    attr_accessor :name, :frequency, :ranking
    def initialize(name, frequency, ranking)
        @name = name
        @frequency= frequency
        @ranking = ranking
    end

    def self.ranking(code)
        json = Requests.ranking('all', code)
        Names.map_names(json)
    end

    def self.female_ranking(code)
        json = Requests.ranking('f', code)
        Names.map_names(json)
    end

    def self.male_ranking(code)
        json = Requests.ranking('m', code)
        Names.map_names(json)
    end

    private
    def self.map_names(json)
        json.map do |name|
            name = new(name[:nome], name[:frequencia], name[:ranking])
        end
    end
end
