# frozen_string_literal: true

FactoryBot.define do
  factory :settlement do
    sequence(:name) { |n| "City #{n}" }
  end
end
