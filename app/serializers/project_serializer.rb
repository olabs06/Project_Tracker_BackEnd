class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :cohort, :link, :description
end
