module Types
  class StudentType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :year, Integer, null: false
    field :status, String, null: false
  end
end
