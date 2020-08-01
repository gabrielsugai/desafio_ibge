require 'spec_helper'

describe Frequency do

    it 'Should check the frequency of a name over the years' do
        names = ['gabriel']
        expect { Frequency.of_name(names) }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            Periodo     gabriel     
            1930[       1267        
            ------------------------
            [1930,1940[ 2744        
            ------------------------
            [1940,1950[ 4256        
            ------------------------
            [1950,1960[ 6095        
            ------------------------
            [1960,1970[ 6559        
            ------------------------
            [1970,1980[ 9103        
            ------------------------
            [1980,1990[ 46996       
            ------------------------
            [1990,2000[ 271405      
            ------------------------
            [2000,2010[ 584024      
            ------------------------
        MESSAGE
    end

    it 'Should check the frequency of more than one name over the years' do
        names = ['gabriel', 'joao']
        expect { Frequency.of_name(names) }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            Periodo     gabriel     joao        
            1930[       1267        60155       
            ------------------------------------
            [1930,1940[ 2744        141772      
            ------------------------------------
            [1940,1950[ 4256        256001      
            ------------------------------------
            [1950,1960[ 6095        396438      
            ------------------------------------
            [1960,1970[ 6559        429148      
            ------------------------------------
            [1970,1980[ 9103        279975      
            ------------------------------------
            [1980,1990[ 46996       273960      
            ------------------------------------
            [1990,2000[ 271405      352552      
            ------------------------------------
            [2000,2010[ 584024      794118      
            ------------------------------------
        MESSAGE
    end

    it 'Should return a message when name not found' do
        names = ['blablabla']
        expect { Frequency.of_name(names) }.to output(<<-MESSAGE.strip_heredoc).to_stdout
            Infelizmente esse nome não possui dados suficientes, favor informar outro.
        MESSAGE
    end
end
