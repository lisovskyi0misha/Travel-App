

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :accommodations, if: owner?

  validates_uniqueness_of :email, scope: :role

  enum role: { user: 0, owner: 1 }
end
