class LineEmployee < ApplicationRecord
    belongs_to :employee
    belongs_to :timesheet
  
    enum status: [:presenca, :falta, :atestado, :inss, :ferias, :licenca, :atrasado, :vacancia, :antecipada]

    
  end