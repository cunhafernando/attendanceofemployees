class Office < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
    has_many :employee
end
