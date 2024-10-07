module Types
  class StockType < Types::BaseObject
    field :id, ID, null: false
    field :symbol, String, null: false
    field :name, String, null: false
  end
end
