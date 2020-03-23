class Mutations::CreateDepartment < Mutations::BaseMutation
  argument :name, String, required: true

  field :department, Types::DepartmentType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    department = Department.new(name: name)
    if department.save
      {
        department: department,
        errors: []
      }
    else
      {
        department: nil,
        errors: Department.errors.full_messages
      }
    end
  end
end