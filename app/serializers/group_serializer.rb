class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :group_members

  has_many :users
end
