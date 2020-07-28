require 'spec_helper'

describe Names do
    it 'Should return a rank list of the most used names in an UF' do
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
        ranking = Names.ranking('35')
        for i in 0..19 do
            expect(ranking[i].name).to eq(data[i][:name])
            expect(ranking[i].frequency).to eq(data[i][:frequency])
            expect(ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used female names in an UF' do
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
        female_ranking = Names.female_ranking('35')
        for i in 0..19 do
            expect(female_ranking[i].name).to eq(data[i][:name])
            expect(female_ranking[i].frequency).to eq(data[i][:frequency])
            expect(female_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used male names in an UF' do
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
        male_ranking = Names.male_ranking('35')
        for i in 0..19 do
            expect(male_ranking[i].name).to eq(data[i][:name])
            expect(male_ranking[i].frequency).to eq(data[i][:frequency])
            expect(male_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used names in a MU' do
        data = [ {name: "MARIA", frequency: 22221, ranking: 1}, {name: "JOSE", frequency: 11827, ranking: 2},
                 {name: "ANA", frequency: 5118, ranking: 3}, {name: "JOAO", frequency: 5111, ranking: 4},
                 {name: "ANTONIO", frequency: 4623, ranking: 5}, {name: "LUCAS", frequency: 2844, ranking: 6},
                 {name: "CARLOS", frequency: 2824, ranking: 7}, {name: "PAULO", frequency: 2796, ranking: 8},
                 {name: "MARCOS", frequency: 2642, ranking: 9}, {name: "FRANCISCO", frequency: 2561, ranking: 10},
                 {name: "GABRIEL", frequency: 2507, ranking: 11}, {name: "PEDRO", frequency: 2363, ranking: 12},
                 {name: "RAFAEL", frequency: 2147, ranking: 13}, {name: "LUIZ", frequency: 2102, ranking: 14},
                 {name: "FELIPE", frequency: 1929, ranking: 15}, {name: "BRUNO", frequency: 1898, ranking: 16},
                 {name: "GUSTAVO", frequency: 1885, ranking: 17}, {name: "MARCELO", frequency: 1837, ranking: 18},
                 {name: "RODRIGO", frequency: 1745, ranking: 19}, {name: "GUILHERME", frequency: 1724, ranking: 20}]
        ranking = Names.ranking('3529401')
        for i in 0..19 do
            expect(ranking[i].name).to eq(data[i][:name])
            expect(ranking[i].frequency).to eq(data[i][:frequency])
            expect(ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used female names in a MU' do
        data = [ {name: "MARIA", frequency: 22136, ranking: 1}, {name: "ANA", frequency: 5101, ranking: 2},
                 {name: "ALINE", frequency: 1588, ranking: 3}, {name: "ADRIANA", frequency: 1487, ranking: 4},
                 {name: "MARCIA", frequency: 1433, ranking: 5}, {name: "JULIANA", frequency: 1402, ranking: 6},
                 {name: "FERNANDA", frequency: 1391, ranking: 7}, {name: "JESSICA", frequency: 1387, ranking: 8},
                 {name: "PATRICIA", frequency: 1382, ranking: 9}, {name: "SANDRA", frequency: 1355, ranking: 10},
                 {name: "BRUNA", frequency: 1305, ranking: 11}, {name: "VANESSA", frequency: 1301, ranking: 12},
                 {name: "JULIA", frequency: 1289, ranking: 13}, {name: "CAMILA", frequency: 1262, ranking: 14},
                 {name: "LETICIA", frequency: 1256, ranking: 15}, {name: "AMANDA", frequency: 1240, ranking: 16},
                 {name: "BEATRIZ", frequency: 1231, ranking: 17}, {name: "APARECIDA", frequency: 1105, ranking: 18},
                 {name: "GABRIELA", frequency: 1039, ranking: 19}, {name: "FRANCISCA", frequency: 1029, ranking: 20}]
        
        female_ranking = Names.female_ranking('3529401')
        for i in 0..19 do
            expect(female_ranking[i].name).to eq(data[i][:name])
            expect(female_ranking[i].frequency).to eq(data[i][:frequency])
            expect(female_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end

    it 'Should return a rank list of the most used male names in a MU' do
        data = [ { name: "JOSE", frequency: 11783, ranking: 1}, {name: "JOAO", frequency: 5087, ranking: 2},
                 {name: "ANTONIO", frequency: 4613, ranking: 3}, {name: "CARLOS", frequency: 2812, ranking: 4},
                 {name: "LUCAS", frequency: 2802, ranking: 5}, {name: "PAULO", frequency: 2779, ranking: 6},
                 {name: "MARCOS", frequency: 2629, ranking: 7}, {name: "FRANCISCO", frequency: 2556, ranking: 8},
                 {name: "GABRIEL", frequency: 2476, ranking: 9}, {name: "PEDRO", frequency: 2350, ranking: 10},
                 {name: "RAFAEL", frequency: 2129, ranking: 11}, {name: "LUIZ", frequency: 2092, ranking: 12},
                 {name: "FELIPE", frequency: 1901, ranking: 13}, {name: "BRUNO", frequency: 1880, ranking: 14},
                 {name: "GUSTAVO", frequency: 1870, ranking: 15}, {name: "MARCELO", frequency: 1834, ranking: 16},
                 {name: "RODRIGO", frequency: 1736, ranking: 17}, {name: "GUILHERME", frequency: 1713, ranking: 18},
                 {name: "EDUARDO", frequency: 1681, ranking: 19}, {name: "DANIEL", frequency: 1647, ranking: 20} ]
                 
        male_ranking = Names.male_ranking('3529401')
        for i in 0..19 do
            expect(male_ranking[i].name).to eq(data[i][:name])
            expect(male_ranking[i].frequency).to eq(data[i][:frequency])
            expect(male_ranking[i].ranking).to eq(data[i][:ranking])
        end
    end
end
