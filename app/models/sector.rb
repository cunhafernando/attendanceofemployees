class Sector < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
    has_many :employees
    has_many :timesheets
end
