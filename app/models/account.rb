class Account < ApplicationRecord
  belongs_to :user
  validates :number, presence: true
  validates :balance, presence: true
end
