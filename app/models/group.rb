class Group < ApplicationRecord
    belongs_to :cohort
    has_many :projects

end
