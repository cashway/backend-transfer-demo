class Order < ActiveRecord::Base
  belongs_to :user
  validates :favored_account, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validate :balance, on: :create
  validate :favored, on: :create
  after_commit :update_balance, on: :create

  private

  def update_balance
    user.account.update(balance: user.account.balance - amount)
    favored = Account.find_by(number: favored_account)
    favored.update(balance: favored.balance + amount) if favored
  end

  def balance
    errors.add(:error, "Insufficient balance") if user.account.balance < amount
  end

  def favored
    errors.add(:error, "Favored account is the same as the user's account") if user.account.number == favored_account
    errors.add(:error, "Favored account does not exist") unless Account.find_by(number: favored_account)
  end
end
