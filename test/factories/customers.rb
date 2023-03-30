FactoryBot.define do
  factory :customer do
    organization_id { ActiveRecord::FixtureSet.identify(:organization) }

    name { Faker::Name.name }
    email { Faker::Internet.safe_email }
  end
end
