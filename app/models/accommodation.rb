# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user

  enum type: { hotel: 0, apartment: 1 }

  after_create_commit lambda {
    broadcast_append_to(
      :list,
      target: 'list-1',
      partial: 'accommodations/accommodation'
    )
  }
end
