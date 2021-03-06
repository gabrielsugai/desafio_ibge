class Requests

    def self.frequency(names)
        response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/#{names}")
        json = JSON.parse(response.body, symbolize_names: true)
    end

    def self.ranking(sex,code)
        if sex == 'all'
            result = []
            response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}")
            json = JSON.parse(response.body, symbolize_names: true)
            json = json.first[:res]
        elsif sex == 'f'
            result = []
            response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}&sexo=F")
            json = JSON.parse(response.body, symbolize_names: true)
            json = json.first[:res]
        elsif sex == 'm'
            result = []
            response = Faraday.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking?localidade=#{code}&sexo=M")
            json = JSON.parse(response.body, symbolize_names: true)
            json = json.first[:res]
        end
    end

    def self.ufs
        uf_list = []
        result = []
        response = Faraday.get('https://servicodados.ibge.gov.br/api/v1/localidades/estados')
        json = JSON.parse(response.body, symbolize_names: true)
    end

    def self.cities
        result = []
        mu_list = []
        response = Faraday.get('https://servicodados.ibge.gov.br/api/v1/localidades/municipios')
        json = JSON.parse(response.body, symbolize_names: true)
    end

end
