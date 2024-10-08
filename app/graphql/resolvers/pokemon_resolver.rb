module Resolvers
  class PokemonResolver < BaseResolver
    type [Types::PokemonType], null: false
    argument :pokedex_number, ID, required: false

    def resolve(pokedex_number:nil)
      if pokedex_number.nil?
        ::Pokemon.all.order(:id)
      else
        ::Pokemon.where({ pokedex_number: pokedex_number })
      end
    end
  end
end
