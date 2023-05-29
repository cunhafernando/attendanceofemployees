class User < ApplicationRecord
    has_secure_password
    has_many :timesheets
    has_many :sectors
    has_many :sectionals
    has_many :offices
    has_many :employees
    has_many :timesheets
    has_many :line_employees
    validates :username , presence: { message: 'O usuário é obrigatório.' }, uniqueness: { message: 'Já existe usuário cadastrado com esse nome.' }
    validates :registration, presence: { message: 'A matrícula é obrigatório.' }, uniqueness: { message: 'Esta matrícula já está cadastrada no sistema.' }
    validates :firstname , :lastname , presence: true
    enum role: [:user, :moderator, :admin]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :user
    end
end
