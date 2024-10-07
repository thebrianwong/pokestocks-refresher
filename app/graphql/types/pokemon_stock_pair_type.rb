module Types
  class PokemonStockPairType < Types::BaseObject
    field :id, ID, null: false
    field :pokemon, Types::PokemonType, null: false
    field :stock, Types::StockType, null: false
    field :season, Types::SeasonType, null: false
  end
end
