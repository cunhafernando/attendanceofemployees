class Employee < ApplicationRecord
    validates :firstname, :lastname, presence: true
    validates :registration, presence: true, uniqueness: true
    belongs_to :user
    belongs_to :office
    belongs_to :sectional
    belongs_to :sector
    has_many :line_employees
    has_many :timesheets, through: :line_employees

    def full_name
        "#{firstname} #{lastname}"
    end
    
end
