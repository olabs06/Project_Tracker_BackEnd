class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :github_link, :description

  has_many :users
end
