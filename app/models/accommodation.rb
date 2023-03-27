# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user, -> { where role: :owner }
  belongs_to :settlement

  validates_presence_of :rate, :name
  validates_numericality_of :rate

  enum type: { hotel: 0, apartment: 1 }

  after_create_commit lambda {
    broadcast_append_to(
      :list,
      target: 'accommodation-list',
      partial: 'accommodations/accommodation'
    )
  }
end
