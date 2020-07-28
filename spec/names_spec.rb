require 'spec_helper'

describe Names do
    it 'Should return a rank list of the most used names in a UF' do
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

    it 'Should return a rank list of the most used female names in a UF' do
        data = [ {name:"MARIA",frequency: 2136057, ranking: 1}, { name: "ANA",frequency: 662035,ranking:2},
                 {name: "JULIANA",frequency: 157939,ranking:3}, {name: "MARCIA",frequency: 152146,ranking:4},
                 {name: "ADRIANA",frequency: 149268,ranking:5}, {name: "APARECIDA",frequency: 143645,ranking:6},
                 {name: "FERNANDA",frequency: 140306,ranking:7}, {name: "PATRICIA",frequency: 139205,ranking:8},
                 {name: "ALINE",frequency: 131893,ranking:9}, {name: "CAMILA",frequency: 131233,ranking:10},
                 {name: "SANDRA",frequency: 131018,ranking:11}, {name: "BRUNA",frequency: 129465,ranking:12},
                 {name: "JULIA",frequency: 127506,ranking:13}, {name: "LETICIA",frequency: 122960,ranking:14},
                 {name: "BEATRIZ",frequency: 122096,ranking:15}, {name: "GABRIELA",frequency: 118669,ranking:16},
                 {name: "JESSICA",frequency: 116920,ranking:17}, {name: "AMANDA",frequency: 116617,ranking:18},
                 {name: "LUCIANA",frequency: 112676,ranking:19}, {name: "VANESSA",frequency: 110214,ranking:20} ]
        female_ranking = Names.female_ranking_uf('35')
        for i in 0..19 do
            expect(female_ranking[i].name).to eq(data[i][:name])
            expect(female_ranking[i].frequency).to eq(data[i][:frequency])
            expect(female_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used male names in a UF' do
        data = [ {name: "JOSE",frequency: 1115060, ranking: 1}, {name: "JOAO",frequency: 608330,ranking: 2},
                 {name: "ANTONIO",frequency: 496524,ranking: 3}, {name: "PAULO",frequency: 332376,ranking: 4},
                 {name: "CARLOS",frequency: 327672,ranking: 5}, {name: "LUCAS",frequency: 280197,ranking: 6},
                 {name: "LUIZ",frequency: 269909,ranking: 7}, {name: "PEDRO",frequency: 262959,ranking: 8},
                 {name: "MARCOS",frequency: 257364,ranking: 9}, {name: "GABRIEL",frequency: 253754,ranking: 10},
                 {name: "LUIS",frequency: 245546,ranking: 11}, {name: "RAFAEL",frequency: 229331,ranking: 12},
                 {name: "FRANCISCO",frequency: 200457,ranking: 13}, {name: "MARCELO",frequency: 196612,ranking: 14},
                 {name: "BRUNO",frequency: 186596,ranking: 15}, {name: "FELIPE",frequency: 184644,ranking: 16},
                 {name: "GUILHERME",frequency: 174690,ranking: 17}, {name: "RODRIGO",frequency: 172242,ranking: 18},
                 {name: "EDUARDO",frequency: 165321,ranking: 19}, {name: "GUSTAVO",frequency: 164437,ranking: 20} ]
        male_ranking = Names.male_ranking_uf('35')
        for i in 0..19 do
            expect(male_ranking[i].name).to eq(data[i][:name])
            expect(male_ranking[i].frequency).to eq(data[i][:frequency])
            expect(male_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end
end




