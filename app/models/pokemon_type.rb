class PokemonType < ApplicationRecord
  self.inheritance_column = nil #type column conflicts with some Rails config
end
