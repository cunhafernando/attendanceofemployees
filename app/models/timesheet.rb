class Timesheet < ApplicationRecord
    has_many :line_employees, dependent: :destroy
    has_many :employees, through: :line_employees
    belongs_to :user
    belongs_to :sector
    validates :sector, presence: true
    
  
    accepts_nested_attributes_for :line_employees
  end