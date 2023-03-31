class AddSectorToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :sector, null: true, foreign_key: true
  end
end
