# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :administrative_divisions, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  scope :with_settlements, -> { all.joins(administrative_divisions: :settlements).distinct }

  def settlements
    administrative_divisions.map(&:settlements).flatten
  end
end
