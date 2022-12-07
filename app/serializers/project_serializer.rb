class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :cohort, :image_url, :github_link, :description, :user_id
end
