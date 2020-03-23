module Types
  class QueryType < Types::BaseObject
    field :all_departments, [Types::DepartmentType], null: false

    def all_departments
      Department.all
    end
  end
end
