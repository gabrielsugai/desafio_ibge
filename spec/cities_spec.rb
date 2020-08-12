require 'spec_helper'

describe Cities do
	db = SQLite3::Database.open "db/database.db"
	it 'Should list all MUs' do
		mu_list = Cities.all
		expect(mu_list.first.code).to eq(1100015)
		expect(mu_list.first.name).to eq("Alta Floresta D'Oeste")
		expect(mu_list.first.uf_initials).to eq('ro')
		expect(mu_list.last.code).to eq(5300108)
		expect(mu_list.last.name).to eq("Brasília")
		expect(mu_list.last.uf_initials).to eq('df')
	end

	it 'Should get a MU code from db' do
		mu_code = Cities.search_mu('Mauá,SP')
		expect(mu_code).to eq(3529401)
	end

	it 'Should return an error if user give an inexistent city' do
		expect { Cities.search_mu('Blablabla,SP') }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            Cidade não encontrada, favor verificar se o nome está correto.
        MESSAGE
	end
end
