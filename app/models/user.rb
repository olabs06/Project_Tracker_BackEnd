class User < ApplicationRecord
  has_secure_password
  belongs_to :project
  belongs_to :group
  
  
  validates :email_address, presence: true, uniqueness: true
end
