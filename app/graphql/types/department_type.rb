module Types
  class DepartmentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :students, [Types::StudentType], null: false
    field :students_count, Integer, null: false

    def students_count
        object.students.size
    end
  end
end
