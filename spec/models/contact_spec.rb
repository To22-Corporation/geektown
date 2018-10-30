require 'rails_helper'

RSpec.describe Contact, type: :model do

  it 'is valid with a user, engineer, language, and content' do
    user = General.create(
      email: 'user@example.com',
      password: '12349876',
      first_name: '匡秀',
      first_name_kana: 'まさひで',
      last_name: '石田',
      last_name_kana: 'いしだ',
      age: 25,
      job: 0
    )
    engineer = Engineer.create(
      email: 'engineer@example.com',
      password: '12349876',
      first_name: 'エンジニア',
      first_name_kana: 'まさひで',
      last_name: 'だおだお',
      last_name_kana: 'いしだ',
      age: 25,
      job: 0
    )
    contact = Contact.new(
      user_id: user.id,
      engineer_id: engineer.id,
      language_id: 1,
      content: 'test'
    )
    expect(contact).to be_valid
  end
end
