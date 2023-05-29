class Office < ApplicationRecord
    validates :name, presence: { message: 'O nome do cargo é obrigatório.' }
    belongs_to :user
    has_many :employee
end
