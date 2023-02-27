# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user

  enum type: { hotel: 0, apartment: 1 }
end
