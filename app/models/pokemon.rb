class Pokemon < ApplicationRecord
  self.table_name = "pokemon"

  belongs_to :type_1, class_name: "PokemonType", foreign_key: "type_1_id"
  belongs_to :type_2, class_name: "PokemonType", foreign_key: "type_2_id"
end
