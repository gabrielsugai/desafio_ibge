require 'spec_helper'

describe Locales do
	it 'Should list all UFs' do
		uf_list = Locales.all
		data = [ {code: 11, name: 'Rondônia', initials: 'RO'}, {code: 12, name: 'Acre', initials: 'AC'},
				 {code: 13, name: 'Amazonas', initials: 'AM'}, {code: 14, name: 'Roraima', initials: 'RR'},
				 {code: 15, name: 'Pará', initials: 'PA'}, {code: 16, name: 'Amapá', initials: 'AP'},
				 {code: 17, name: 'Tocantins', initials: 'TO'}, {code: 21, name: 'Maranhão', initials: 'MA'},
				 {code: 22, name: 'Piauí', initials: 'PI'}, {code: 23, name: 'Ceará', initials: 'CE'}, 
				 {code: 24, name: 'Rio Grande do Norte', initials: 'RN'}, {code: 25, name: 'Paraíba', initials: 'PB'},
				 {code: 26, name: 'Pernambuco', initials: 'PE'}, {code: 27, name: 'Alagoas', initials: 'AL'},
				 {code: 28, name: 'Sergipe', initials: 'SE'}, {code: 29, name: 'Bahia', initials: 'BA'},
				 {code: 31, name: 'Minas Gerais', initials: 'MG'}, {code: 32, name: 'Espírito Santo', initials: 'ES'},
				 {code: 33, name: 'Rio de Janeiro', initials: 'RJ'}, {code: 35, name: 'São Paulo', initials: 'SP'},
				 {code: 41, name: 'Paraná', initials: 'PR'}, {code: 42, name: 'Santa Catarina', initials: 'SC'},
				 {code: 43, name: 'Rio Grande do Sul', initials: 'RS'},
				 {code: 50, name: 'Mato Grosso do Sul', initials: 'MS'},
				 {code: 51, name: 'Mato Grosso', initials: 'MT'}, {code: 52, name: 'Goiás', initials: 'GO'},
				 {code: 53, name: 'Distrito Federal', initials: 'DF'} ]
		for i in 0..26 do
			expect(uf_list[i].code).to eq(data[i][:code])
		end
  end
end
