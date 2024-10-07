module Types
  class PokemonTypeType < Types::BaseObject
    field :id, ID, null: false
    field :type, String, null: false
    field :sprite_url, String, null: false
  end
end
