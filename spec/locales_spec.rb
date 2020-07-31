require 'spec_helper'

describe Locales do
	it 'Should list all UFs' do
		uf_list = Locales.all
		expect(uf_list.first).to eq([11, 'Rondônia', 'ro'])
		expect(uf_list.last).to eq([53, 'Distrito Federal', 'df'])
	end
end
