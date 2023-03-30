FactoryBot.define do
  factory :park do
    organization { nil }

    name { Faker::Company.name }
  end
end
