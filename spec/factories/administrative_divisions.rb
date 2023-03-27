# frozen_string_literal: true

FactoryBot.define do
  factory :administrative_division do
    sequence(:name) { |n| "Division #{n}" }
  end

  factory :division_with_settlements, class: 'AdministrativeDivision' do
    sequence(:name) { |n| "Division #{n}" }

    after(:create) do |administrative_division|
      create_list(:settlement, 2, administrative_division:)
    end
  end
end
