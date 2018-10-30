FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password '12349876'
    role 0
    first_name '匡秀'
    first_name_kana 'まさひで'
    last_name '石田'
    last_name_kana 'いしだ'
    age 25
    job 0

    factory :engineer do
      role 1
    end
  end
end
