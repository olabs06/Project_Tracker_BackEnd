class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :user_id, :project_id, :group_members

  has_many :projects
end
