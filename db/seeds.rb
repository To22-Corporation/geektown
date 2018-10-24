(1..10).each do |i|
  User.create(
    email: "user#{i}@example.com",
    password: '12349876',
    role: i % 2,
    first_name: "#{i}番目のmasahide",
    first_name_kana: 'まさひで',
    last_name: "#{i}番目のishida",
    last_name_kana: 'いしだ',
    age: 15 + i,
    job: i % 3
  )
end