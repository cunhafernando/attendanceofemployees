class AddMiddleNameToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :middlename, :string
  end
end
