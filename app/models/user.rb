class User < ApplicationRecord
    has_many :projects
    has_many :groups
    has_many :cohorts
    
    has_secure_password
    validates :email_address, presence: true, uniqueness: true
end
