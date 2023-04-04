class LineEmployee < ApplicationRecord
    belongs_to :employee
    belongs_to :timesheet
  
    validates :status, presence: true
    enum status: [:presenca, :falta, :atestado, :inss, :ferias, :licenca, :atrasado, :vacancia, :antecipada]

    
  end