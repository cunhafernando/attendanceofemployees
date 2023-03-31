class User < ApplicationRecord
    has_secure_password
    has_many :timesheets
    has_many :sectors
    has_many :sectionals
    has_many :offices
    has_many :employees
    has_many :timesheets
    has_many :line_employees
    validates :username , :registration , presence: true, uniqueness: true
    validates :firstname , :lastname , presence: true
    enum role: [:user, :moderator, :admin]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :user
    end
end
