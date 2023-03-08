# frozen_string_literal: true

FactoryBot.define do
  factory :accommodation do
    association :user, factory: :user
    name { 'Some name' }
  end
end
