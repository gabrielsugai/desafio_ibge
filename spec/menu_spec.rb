require 'spec_helper'
require './lib/partials/menu'

describe Partials::Menu do

    it 'Should show a menu for users' do
        expect { Partials::Menu.new.show_menu }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            Digite 1 para verificar o ranking de nomes de uma UF.
            Digite 2 para verificar o ranking de nomes de um MU.
            Digite 3 para verificar a frequencia de um nome ao decorer dos anos.
            Digite 4 para sair.
        MESSAGE
    end

    it 'Should show all UFs when user chose the first option' do
        expect { Partials::Menu.new.show_ufs }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            11 - Rondônia (RO)
            12 - Acre (AC)
            13 - Amazonas (AM)
            14 - Roraima (RR)
            15 - Pará (PA)
            16 - Amapá (AP)
            17 - Tocantins (TO)
            21 - Maranhão (MA)
            22 - Piauí (PI)
            23 - Ceará (CE)
            24 - Rio Grande do Norte (RN)
            25 - Paraíba (PB)
            26 - Pernambuco (PE)
            27 - Alagoas (AL)
            28 - Sergipe (SE)
            29 - Bahia (BA)
            31 - Minas Gerais (MG)
            32 - Espírito Santo (ES)
            33 - Rio de Janeiro (RJ)
            35 - São Paulo (SP)
            41 - Paraná (PR)
            42 - Santa Catarina (SC)
            43 - Rio Grande do Sul (RS)
            50 - Mato Grosso do Sul (MS)
            51 - Mato Grosso (MT)
            52 - Goiás (GO)
            53 - Distrito Federal (DF)
            Digite o codigo de uma UF para verificar os nomes mais utilizados nessa região.
        MESSAGE
    end

    it 'Should generate tables with the ranks when chose the first option' do
        uf = '35'
        expect { Partials::Menu.new.first_option(uf) }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            ==========================Ranking Geral==========================
            Rank  Nome     Frequencia
            1 - MARIA -     2143232
            2 - JOSE -     1118772
            3 - ANA -     664153
            4 - JOAO -     610851
            5 - ANTONIO -     497959
            6 - PAULO -     333637
            7 - CARLOS -     328926
            8 - LUCAS -     282840
            9 - LUIZ -     270982
            10 - PEDRO -     264316
            11 - MARCOS -     258443
            12 - GABRIEL -     256501
            13 - LUIS -     246582
            14 - RAFAEL -     231278
            15 - FRANCISCO -     201111
            16 - MARCELO -     197445
            17 - BRUNO -     188035
            18 - FELIPE -     186363
            19 - GUILHERME -     176046
            20 - RODRIGO -     173059
            ==========================Ranking Feminino==========================
            Rank  Nome     Frequencia
            1 - MARIA -     2136057
            2 - ANA -     662035
            3 - JULIANA -     157939
            4 - MARCIA -     152146
            5 - ADRIANA -     149268
            6 - APARECIDA -     143645
            7 - FERNANDA -     140306
            8 - PATRICIA -     139205
            9 - ALINE -     131893
            10 - CAMILA -     131233
            11 - SANDRA -     131018
            12 - BRUNA -     129465
            13 - JULIA -     127506
            14 - LETICIA -     122960
            15 - BEATRIZ -     122096
            16 - GABRIELA -     118669
            17 - JESSICA -     116920
            18 - AMANDA -     116617
            19 - LUCIANA -     112676
            20 - VANESSA -     110214
            ==========================Ranking Masculino==========================
            Rank  Nome     Frequencia
            1 - JOSE -     1115060
            2 - JOAO -     608330
            3 - ANTONIO -     496524
            4 - PAULO -     332376
            5 - CARLOS -     327672
            6 - LUCAS -     280197
            7 - LUIZ -     269909
            8 - PEDRO -     262959
            9 - MARCOS -     257364
            10 - GABRIEL -     253754
            11 - LUIS -     245546
            12 - RAFAEL -     229331
            13 - FRANCISCO -     200457
            14 - MARCELO -     196612
            15 - BRUNO -     186596
            16 - FELIPE -     184644
            17 - GUILHERME -     174690
            18 - RODRIGO -     172242
            19 - EDUARDO -     165321
            20 - GUSTAVO -     164437
            ====================================================
        MESSAGE
    end
end

