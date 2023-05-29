class Sectional < ApplicationRecord
    validates :name, presence: { message: 'O nome do local é obrigatório.' }
    belongs_to :user
    has_many :employee
end
