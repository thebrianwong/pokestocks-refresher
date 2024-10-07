module Resolvers
  class SeasonResolver < BaseResolver
    type [Types::SeasonType], null: false
    argument :id, ID

    def resolve(id:)
      ::Season.where({id:id})
    end
  end
end
