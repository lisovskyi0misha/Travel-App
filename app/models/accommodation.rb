# frozen_string_literal: true

class Accommodation < ApplicationRecord
  validates :name, presence: true

  belongs_to :user

  enum type: { hotel: 0, apartment: 1 }

  after_create_commit lambda {
    broadcast_append_to(
      :list,
      target: 'list-1',
      partial: 'accommodations/accommodation'
    )
  }

  scope :paginate, ->(page) { limit(5).offset(page ? ((page.to_i - 1) * 5) : 0).order(created_at: :desc) }
end
