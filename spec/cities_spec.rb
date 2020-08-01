require 'spec_helper'

describe Cities do
	db = SQLite3::Database.open "db/database.db"
	it 'Should list all MUs' do
		mu_list = Cities.all
		expect(mu_list.first).to eq([1100015, "alta floresta d'oeste", "ro"])
		expect(mu_list.last).to eq([5300108, "brasília", "df"])
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
