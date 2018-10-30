FactoryBot.define do
  factory :contact do
    association :user
    association :engineer
    association :language
    content 'ここにお悩みが入ります'
  end
end
