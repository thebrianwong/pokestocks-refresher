module Types
  class SeasonType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :active, Boolean, null: false
  end
end
