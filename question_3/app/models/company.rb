class Company < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :company_users
  has_many :users, through: :company_users
end
