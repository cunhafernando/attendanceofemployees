class CreateEmployeesTimesheetsAndLineEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :timesheets do |t|
      t.belongs_to :sector, null: false
      t.timestamps
    end

    create_table :line_employees do |t|
      t.belongs_to :employee, null: true
      t.belongs_to :timesheet, null: true
      t.integer :status, null: true
      t.timestamps
    end

    add_foreign_key :line_employees, :employees
    add_foreign_key :line_employees, :timesheets
    add_foreign_key :timesheets, :sectors
  end
end
