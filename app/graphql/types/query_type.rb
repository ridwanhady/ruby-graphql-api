module Types
  class QueryType < Types::BaseObject
    field :departments, [Types::DepartmentType], null: false

    def departments
      Department.all
    end

    field :department, Types::DepartmentType, null: false do
      argument :id, ID, required: true
    end

    def department(id:)
      Department.find(id)
    end
  end
end
