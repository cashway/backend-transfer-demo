class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable
  has_one :account
  has_many :orders
end
