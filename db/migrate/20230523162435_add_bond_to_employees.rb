class AddBondToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :bond, :integer
    add_column :employees, :orderly, :integer
  end
end
