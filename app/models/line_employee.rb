class LineEmployee < ApplicationRecord
    belongs_to :employee
    belongs_to :timesheet
  
    enum status: {presenca: 0, falta: 1, atrasado: 2, atestado: 3, inss: 4, ferias: 5, licenca: 6, vacancia: 7, antecipada: 8, upa: 9, hegv: 10, folga:11}

    validates :employee_id, presence: false

    
  end