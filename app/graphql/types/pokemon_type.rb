module Types
  class PokemonType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :pokedex_number, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :type_1, Types::PokemonTypeType, null: false
    field :type_2, Types::PokemonTypeType, null: true
    field :sprite_url, String, null: false
  end
end
