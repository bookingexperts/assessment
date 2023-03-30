FactoryBot.define do
  factory :customer do
    organization { nil }

    name { Faker::Name.name }
    email { Faker::Internet.safe_email }
  end
end
