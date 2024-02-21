class User < ApplicationRecord
  extend Devise::Models
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :registerable
  has_one :account
  has_many :orders
  validates :email, presence: true
  validates :name, presence: true
  after_commit :create_account, on: :create

  private

  def create_account
    Account.create(user: self, number: account_number)
  end

  def account_number
    "#{id}".rjust(4, '0')
  end
end
