require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:balance) }
  end

  context 'associations' do
    it { should belong_to(:user) }
end
