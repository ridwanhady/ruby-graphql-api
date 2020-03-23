class Mutations::AddStudent < Mutations::BaseMutation
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :department_id, Integer, required: true
  argument :year, Integer, required: true
  argument :status, String, required: false

  field :student, Types::StudentType, null: false
  field :errors, [String], null: false

  def resolve(first_name:, last_name:, department_id:, year:, status:)
    student = Student.new(
      first_name: first_name,
      last_name: last_name,
      department_id: department_id,
      status: status,
      year: year
    )
    if student.save
      {
        student: student,
        errors: []
      }
    else
      {
        student: nil,
        errors: Student.errors.full_messages
      }
    end
  end
end