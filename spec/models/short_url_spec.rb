# frozen_string_literal: true

describe ShortUrl, type: :model do
  context 'validation' do
    subject { build :short_url }

    it do
      is_expected.to validate_presence_of(:url)
        .with_message(:blank)
    end

    it do
      is_expected.to validate_uniqueness_of(:short_code)
        .with_message(:taken)
    end

    it do
      is_expected.to allow_value(Faker::Internet.url).for(:url)
    end

    it do
      is_expected.to_not allow_value('http:\\').for(:url)
    end
  end
end
