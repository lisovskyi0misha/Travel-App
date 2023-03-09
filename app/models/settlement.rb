# frozen_string_literal: true

class Settlement < ApplicationRecord
  belongs_to :administrative_devision
  has_many :accommodations, dependent: :nullify

  validates_presence_of :name

  enum type: { city: 0, countryside: 1 }
end
