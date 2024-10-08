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

    def type_1
      dataloader.with(Sources::ActiveRecord, ::PokemonType).load(object.type_1_id)
    end

    def type_2
      if object.type_2_id.nil?
       nil
      else
       dataloader.with(Sources::ActiveRecord, ::PokemonType).load(object.type_2_id)
      end
    end
  end
end
