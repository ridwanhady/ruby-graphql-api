module Types
  class MutationType < Types::BaseObject
    field :create_department, mutation: Mutations::CreateDepartment

    field :add_student, mutation: Mutations::AddStudent
  end
end
