# frozen_string_literal: true

FactoryBot.define do
  factory :short_url do
    url { Faker::Internet.url }
    short_code { SecureRandom.hex(3) }
    start_date { DateTime.now }
  end
end
