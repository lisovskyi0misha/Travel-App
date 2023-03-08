# frozen_string_literal: true

class Accommodation < ApplicationRecord
  validates :name, presence: true

  belongs_to :user

  enum type: { hotel: 0, apartment: 1 }

  after_create_commit lambda {
    broadcast_append_to(
      :list,
      target: 'accommodation-list',
      partial: 'accommodations/accommodation'
    )
  }
end
