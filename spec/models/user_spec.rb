# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # context 'when owner' do
  #   before { subject.role = :owner }
  #   it { should have_many(:accommodations) }
  # end

  # context 'when user' do
  #   before { subject.role = :user }
  #   it { should have_many(:accommodations) }
  # end

  # it { should validate_uniqueness_of(:email).scoped_to(:role) }

  it { should define_enum_for(:role).with_values(%i[user owner]) }
end
