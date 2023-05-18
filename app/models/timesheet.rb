class Timesheet < ApplicationRecord
    has_many :line_employees, dependent: :destroy
    has_many :employees, through: :line_employees
    belongs_to :user
    belongs_to :sector
    validates_presence_of :sector, message: "Selecione um setor"
    
  
    accepts_nested_attributes_for :line_employees, allow_destroy: true, reject_if: proc { |attributes| attributes['employee_id'] == "0" }
  end