require 'spec_helper'
require './lib/partials/menu'

describe Partials::Menu do

    it 'Should show a menu for users' do
        expect { Partials::Menu.new.show_menu }.to output(
"Digite 1 para verificar o ranking de nomes de uma UF.
Digite 2 para verificar o ranking de nomes de um MU.
Digite 3 para verificar a frequencia de um nome ao decorer dos anos.
Digite 4 para sair.\n").to_stdout
    end

end