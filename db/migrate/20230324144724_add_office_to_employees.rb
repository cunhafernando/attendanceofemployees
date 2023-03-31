class AddOfficeToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :office, null: true, foreign_key: true
  end
end
