require 'rails_helper'

RSpec.describe User, type: :model do

  it 'has a valid general user factory' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'has a valid engineer user factory' do
    expect(FactoryBot.build(:engineer)).to be_valid
  end

  it 'is invalid without a first name' do
    user = FactoryBot.build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address'do
    FactoryBot.create(:user, email: 'user@example.com')
    user = FactoryBot.build(:user, email: 'user@example.com')
    user.valid?
    expect(user.errors[:email]).to include('has already been taken')
  end

  it "returns a user's full name as a string" do
    user = FactoryBot.build(:user, first_name: '匡秀', last_name: '石田')
    user.valid?
    expect(user.full_name).to eq '石田 匡秀'
  end
end
