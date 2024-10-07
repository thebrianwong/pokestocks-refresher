module Resolvers
  class PokemonTypeResolver < BaseResolver
    type [Types::PokemonTypeType], null: false
    argument :id, ID, required: false

    def resolve(id:nil)
      if id.nil?
        ::PokemonType.all
      else
        ::PokemonType.where({ id: id })
      end
    end
  end
end
