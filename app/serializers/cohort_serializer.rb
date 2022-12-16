class CohortSerializer < ActiveModel::Serializer
  attributes :id, :year, :user_id

  has_many :groups
end
