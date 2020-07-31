require 'spec_helper'

describe Cities do
	it 'Should list all MUs' do
		mu_list = Cities.all
		expect(mu_list.first).to eq([1100015, "alta floresta d'oeste", "ro"])
		expect(mu_list.last).to eq([5300108, "brasília", "df"])
	end
end