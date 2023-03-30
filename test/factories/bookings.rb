FactoryBot.define do
  factory :booking do
    park_id { ActiveRecord::FixtureSet.identify(:park) }
    customer_id { ActiveRecord::FixtureSet.identify(:customer) }
  end
end
