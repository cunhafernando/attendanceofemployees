class Employee < ApplicationRecord
    validates :firstname, presence: { message: 'O sobrenome é obrigatório.' }
    validates :lastname, presence: { message: 'O sobrenome é obrigatório.' }
    validates :registration, presence: { message: 'O número de matrícula é obrigatório.' }, uniqueness: { message: 'Esta matrícula já está cadastrada no sistema.' }
    belongs_to :user
    belongs_to :office
    belongs_to :sectional
    belongs_to :sector
    has_many :line_employees
    has_many :timesheets, through: :line_employees
    enum orderly: [:diurno, :noturno]
    enum bond: [:hegv, :upa]

    def full_name
        "#{firstname} #{middlename} #{lastname}"
    end
    
end
