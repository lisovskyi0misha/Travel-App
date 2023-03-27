# frozen_string_literal: true

FactoryBot.define do
  factory :country do
    sequence(:name) { |n| "Country #{n}" }
  end

  factory :country_with_settlements, class: 'Country' do
    sequence(:name) { |n| "Country with settlement #{n}" }

    after(:create) do |country|
      create_list(:division_with_settlements, 2, country:)
    end
  end
end
