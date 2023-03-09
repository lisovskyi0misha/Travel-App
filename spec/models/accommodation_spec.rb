# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accommodation, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:settlement) }

  it { should validate_presence_of(:rate) }
  it { should validate_presence_of(:name) }
  it { should validate_numericality_of(:rate) }

  it { should define_enum_for(:type).with_values(%i[hotel apartment]) }
end
