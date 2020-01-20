$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }

  row_i = 0
  while nds[row_i] do 
    director = nds[row_i][:name]
    total = 0
    column_i = 0
    while column_i < nds[row_i][:movies].length do 
      total += nds[row_i][:movies][column_i][:worldwide_gross]
      
      column_i += 1
    end
    result[director] = total
    
    row_i += 1
  end 
  pp result
end

directors_totals(directors_database)