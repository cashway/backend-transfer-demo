require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validations' do
    it { should validate_presence_of(:favored_account) }
    it { should validate_presence_of(:amount) }
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end