# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :accommodations, -> { where role: :owner }

  validates_uniqueness_of :email, scope: :role
  validates_numericality_of :rate

  enum role: { user: 0, owner: 1 }
end
