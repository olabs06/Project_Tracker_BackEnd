class Project < ApplicationRecord
    belongs_to :user
    belongs_to :group
    belongs_to :cohort

end
