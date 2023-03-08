# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@email.com" }
    password { '123123' }
    password_confirmation { '123123' }
    confirmed_at { Date.today }
    first_name { 'Name' }
    last_name { 'LastName' }
  end
end
