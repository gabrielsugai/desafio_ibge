require 'spec_helper'

describe Locales do
	db = SQLite3::Database.open "db/database.db"
	it 'Should list all UFs' do
		uf_list = Locales.all
		expect(uf_list.first).to eq([11, 'Rondônia', 'ro'])
		expect(uf_list.last).to eq([53, 'Distrito Federal', 'df'])
	end

	it 'Should list all UFs from db' do
		uf_list = Locales.list_uf
		expect(uf_list.first).to eq([11, 'Rondônia', 'ro'])
		expect(uf_list.last).to eq([53, 'Distrito Federal', 'df'])
	end

	it 'Should get a UF code from db' do
		uf_code = Locales.search_uf('SP')
		expect(uf_code).to eq(35)
	end

end
