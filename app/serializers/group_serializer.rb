class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name

  has_many :users
end
