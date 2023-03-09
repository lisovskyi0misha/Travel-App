# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :administrative_devisions, dependent: :destroy

  validates_presence_of :name
end
