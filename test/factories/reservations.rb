FactoryBot.define do
  factory :reservation do
    park { nil }
    booking { nil }

    start_date { "2023-03-23" }
    end_date { "2023-03-30" }
  end
end
