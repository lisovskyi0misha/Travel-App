# frozen_string_literal: true

class AdministrativeDivision < ApplicationRecord
  belongs_to :country
  has_many :settlements, dependent: :destroy

  validates_presence_of :name

  enum type: { region: 0, state: 1, ceremonial_county: 2, county: 3, canton: 4 }
end
