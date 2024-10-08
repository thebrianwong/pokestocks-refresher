module Resolvers
  class StockResolver < BaseResolver
    type [Types::StockType], null: false
    argument :id, ID, required: false

    def resolve(id:nil)
      if id.nil?
        ::Stock.all.order(:id)
      else
        ::Stock.where({ id: id })
      end
    end
  end
end
