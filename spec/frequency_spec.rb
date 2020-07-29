require 'spec_helper'

describe Frequency do

    it 'Should check the frequency of a name over the years' do
        expect { Frequency.of_name('gabriel') }.to output(
"|  Periodo     |   gabriel |
    1930[      |   1267
 [1930,1940[   |   2744
 [1940,1950[   |   4256
 [1950,1960[   |   6095
 [1960,1970[   |   6559
 [1970,1980[   |   9103
 [1980,1990[   |   46996
 [1990,2000[   |   271405
 [2000,2010[   |   584024\n").to_stdout
    end

end
