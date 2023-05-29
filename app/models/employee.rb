class Employee < ApplicationRecord
    validates :firstname, :lastname, presence: true
    validates :registration, presence: true, uniqueness: true, , :message => "Esta matricula já está cadastrada"
    belongs_to :user
    belongs_to :office
    belongs_to :sectional
    belongs_to :sector
    has_many :line_employees
    has_many :timesheets, through: :line_employees
    enum orderly: [:diurno, :noturno]
    enum bond: [:hegv, :upa]

    def full_name
        "#{firstname} #{lastname}"
    end
    
end
