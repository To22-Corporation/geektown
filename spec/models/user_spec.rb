require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is valid with a first name, last name, email, and password' do
    user = User.new(
      email: 'user@example.com',
      password: '12349876',
      role: 0,
      first_name: '匡秀',
      first_name_kana: 'まさひで',
      last_name: '石田',
      last_name_kana: 'いしだ',
      age: 25,
      job: 0
    )
    expect(user).to be_valid
  end

  it 'is invalid without a first name' do
    user = User.new(first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address'do
    User.create(
      email: 'user@example.com',
      password: '12349876',
      role: 0,
      first_name: '匡秀',
      first_name_kana: 'まさひで',
      last_name: '石田',
      last_name_kana: 'いしだ',
      age: 25,
      job: 0
    )
    user = User.new(
      email: 'user@example.com',
      password: '98761234',
      role: 0,
      first_name: '康平',
      first_name_kana: 'こうへい',
      last_name: '野間',
      last_name_kana: 'のま',
      age: 23,
      job: 1
    )
    user.valid?
    expect(user.errors[:email]).to include('has already been taken')
  end

  it "returns a user's full name as a string" do
    user = User.new(
      email: 'user@example.com',
      password: '12349876',
      role: 0,
      first_name: '匡秀',
      first_name_kana: 'まさひで',
      last_name: '石田',
      last_name_kana: 'いしだ',
      age: 25,
      job: 0
    )
    user.valid?
    expect(user.full_name).to match('石田匡秀')
  end
end
