# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accommodation, type: :model do
  it { should belong_to(:user) }
  it { define_enum_for(:type)}
  it { should allow_values(:hotel, :apartment).for(:type) }
end
