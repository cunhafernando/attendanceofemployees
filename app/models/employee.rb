class Employee < ApplicationRecord
    validates :firstname, :lastname, presence: { message: 'O nome e sobrenome é obrigatório.' }
    validates :registration, presence: true, uniqueness: { message: 'Esta matrícula já está cadastrada no sistema.' }
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
