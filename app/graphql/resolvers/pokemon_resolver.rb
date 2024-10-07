module Resolvers
  class PokemonResolver < BaseResolver
    type [Types::PokemonType], null: false
    argument :pokedex_number, ID, required: false

    def resolve(pokedex_number:nil)
      p dataloader
      p object
      if pokedex_number.nil?
        ::Pokemon.all
      else
        ::Pokemon.where({ pokedex_number: pokedex_number })
      end
    end
  end
end
