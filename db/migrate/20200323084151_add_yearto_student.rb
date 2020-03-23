class AddYeartoStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :year, :integer
    add_column :students, :status, :integer, default: 0
  end
end
