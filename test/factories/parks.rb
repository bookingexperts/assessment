FactoryBot.define do
  factory :park do
    organization_id { ActiveRecord::FixtureSet.identify(:organization) }

    name { Faker::Company.name }
  end
end
