class PokemonStockPair < ApplicationRecord
  self.primary_key = "id"

  belongs_to :season
  belongs_to :pokemon
  belongs_to :stock
end
