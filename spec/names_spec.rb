require 'spec_helper'

describe Names do
    it 'Should return a rank list of the most usable names in a UF' do
        data = [{name: 'MARIA', frequency: 2143232, ranking: 1},{name: 'JOSE', frequency: 1118772, ranking: 2},
                {name: 'ANA', frequency: 664153, ranking: 3},{name: 'JOAO', frequency: 610851, ranking: 4},
                {name: 'ANTONIO', frequency: 497959, ranking: 5},{name: 'PAULO', frequency: 333637, ranking: 6},
                {name: 'CARLOS', frequency: 328926, ranking: 7},{name: 'LUCAS', frequency: 282840, ranking: 8},
                {name: 'LUIZ', frequency: 270982, ranking: 9},{name: 'PEDRO', frequency: 264316, ranking: 10},
                {name: 'MARCOS', frequency: 258443, ranking: 11},{name: 'GABRIEL', frequency: 256501, ranking: 12},
                {name: 'LUIS', frequency: 246582, ranking: 13},{name: 'RAFAEL', frequency: 231278, ranking: 14},
                {name: 'FRANCISCO', frequency: 201111, ranking: 15},{name: 'MARCELO', frequency: 197445, ranking: 16},
                {name: 'BRUNO', frequency: 188035, ranking: 17},{name: 'FELIPE', frequency: 186363, ranking: 18},
                {name: 'GUILHERME', frequency: 176046, ranking: 19},{name: 'RODRIGO', frequency: 173059, ranking: 20}]
        ranking = Names.ranking_uf('35')
        for i in 0..19 do
            expect(ranking[i].name).to eq(data[i][:name])
            expect(ranking[i].frequency).to eq(data[i][:frequency])
            expect(ranking[i].ranking).to eq(data[i][:ranking])
        end
    end
end



