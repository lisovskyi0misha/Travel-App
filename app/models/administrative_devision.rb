# frozen_string_literal: true

class AdministrativeDevision < ApplicationRecord
  belongs_to :country
  has_many :settlements, dependent: :destroy

  validates_presence_of :name

  enum type: { region: 0, state: 1 }
end
