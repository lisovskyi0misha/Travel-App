# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:accommodations).conditions(role: :owner) }

  it { should validate_uniqueness_of(:email).scoped_to(:role) }
  it { should validate_numericality_of(:rate) }

  it { should define_enum_for(:role).with_values(%i[user owner]) }
end
