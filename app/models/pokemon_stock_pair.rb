class PokemonStockPair < ApplicationRecord
  belongs_to :season
  belongs_to :pokemon
  belongs_to :stock
end
