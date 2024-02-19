class Order < ActiveRecord::Base
  belongs_to :user
  validates :favored_account, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validate :check_balance, on: :create
  after_commit :update_balance, on: :create

  private

  def update_balance
    user.account.update(balance: user.account.balance - amount)
    favored = Account.find_by(number: favored_account)
    favored.update(balance: favored.balance + amount) if favored
  end

  def check_balance
    errors.add(:amount, "Insufficient balance") if user.account.balance < amount
  end
end
