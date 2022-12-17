class Project < ApplicationRecord
    has_many :users
    has_many :groups, through: :users
    

end
