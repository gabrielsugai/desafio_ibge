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

end
