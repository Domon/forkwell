class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :company_users
  has_many :companies, through: :company_users
end
