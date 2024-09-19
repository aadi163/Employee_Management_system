FactoryBot.define do
  factory :user do
    name {Faker::Internet.name}
    username {Faker::Internet.unique.username}
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password(min_length: 8) }  
  end
end
