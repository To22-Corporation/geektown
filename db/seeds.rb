Collage.create(name: '京都大学')
Collage.create(name: '大阪大学')
Language.create(name: 'Ruby')
Language.create(name: 'JavaScript')
Language.create(name: 'HTML/CSS')
Language.create(name: 'Python')
Language.create(name: 'C/C++')
Language.create(name: 'PHP')
(1..10).each do |i|
  User.create(
    email: "user#{i}@example.com",
    password: '12349876',
    role: 1,
    first_name: "匡秀",
    first_name_kana: 'まさひで',
    last_name: "石田",
    last_name_kana: 'いしだ',
    age: 15 + i,
    collage_id: 1
  )
end
(11..20).each do |i|
  User.create(
    email: "user#{i}@example.com",
    password: '12349876',
    role: 1,
    first_name: "匡秀",
    first_name_kana: 'まさひで',
    last_name: "石田",
    last_name_kana: 'いしだ',
    age: 15 + i,
    collage_id: 2
  )
end