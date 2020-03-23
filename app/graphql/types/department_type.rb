module Types
  class DepartmentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :students, [Types::StudentType], null: false
    field :students_count, Integer, null: false
    field :active_students, [Types::StudentType], null: false
    field :graduate_students, [Types::StudentType], null: false
    field :dropout_students, [Types::StudentType], null: false

    def students_count
        object.students.size
    end

    def active_students
      object.students.active
    end

    def graduate_students
      object.students.graduate
    end

    def dropout_students
      object.students.droout
    end
  end
end
