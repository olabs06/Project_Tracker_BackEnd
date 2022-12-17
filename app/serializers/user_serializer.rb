class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :phone_number, :user_type

  belongs_to :project
  belongs_to :group
  belongs_to :cohort
end
