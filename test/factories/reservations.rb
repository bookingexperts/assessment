FactoryBot.define do
  factory :reservation do
    park_id { ActiveRecord::FixtureSet.identify(:park) }
    booking_id { ActiveRecord::FixtureSet.identify(:booking) }

    start_date { "2023-03-23" }
    end_date { "2023-03-30" }
  end
end
