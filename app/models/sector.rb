class Sector < ApplicationRecord
    validates :name, presence: { message: 'O nome do setor é obrigatório.' }
    belongs_to :user
    has_many :employees
    has_many :timesheets
end
