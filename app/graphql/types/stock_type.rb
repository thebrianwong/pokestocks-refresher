module Types
  class StockType < Types::BaseObject
    field :id, ID, null: false
    field :symbol, String, null: false
    field :name, String, null: false
    field :price, Float, null: true

    def price
      dataloader.with(Sources::StockPrice).load(object.symbol)
    end
  end
end
