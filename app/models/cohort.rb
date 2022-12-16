class Cohort < ApplicationRecord
    has_many :groups
    has_many :projects, through: :groups

end
