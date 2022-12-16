class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :phone_number, :user_type

    has_many :projects
    has_many :groups
    has_many :cohorts
end
