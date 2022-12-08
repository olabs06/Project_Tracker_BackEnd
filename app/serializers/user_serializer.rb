class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password, :phone_number, :user_type
end
