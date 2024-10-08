module Resolvers
  class PokemonStockPairResolver < BaseResolver
    type [Types::PokemonStockPairType], null: false
    argument :id, ID, required: false

    def resolve(id:nil)
      if id.nil?
        ::PokemonStockPair.all.order(:id)
      else
        ::PokemonStockPair.where({ id: id })
      end
    end
  end
end
