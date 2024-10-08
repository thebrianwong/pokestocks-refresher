module Types
  class PokemonStockPairType < Types::BaseObject
    field :id, ID, null: false
    field :pokemon, Types::PokemonType, null: false
    field :stock, Types::StockType, null: false
    field :season, Types::SeasonType, null: false

    def pokemon
      dataloader.with(Sources::ActiveRecord, ::Pokemon).load(object.pokemon_id)
    end

    def stock
      dataloader.with(Sources::ActiveRecord, ::Stock).load(object.stock_id)
    end

    def season
      dataloader.with(Sources::ActiveRecord, ::Season).load(object.season_id)
    end
  end
end
