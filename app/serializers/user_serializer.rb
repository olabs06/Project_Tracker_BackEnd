class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :phone_number, :user_type

  belongs_to :project
  belongs_to :group
end
