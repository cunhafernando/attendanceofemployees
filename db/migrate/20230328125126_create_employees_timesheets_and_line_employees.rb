class CreateEmployeesTimesheetsAndLineEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :timesheets do |t|
      t.belongs_to :sector, null: true
      t.timestamps
    end

    create_table :line_employees do |t|
      t.belongs_to :employee, null: false
      t.belongs_to :timesheet, null: false
      t.integer :status
    end

    add_foreign_key :line_employees, :employees
    add_foreign_key :line_employees, :timesheets
    add_foreign_key :timesheets, :sectors
  end
end
