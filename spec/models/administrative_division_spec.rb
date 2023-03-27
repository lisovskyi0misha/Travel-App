# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdministrativeDivision, type: :model do
  it { should have_many(:settlements).dependent(:destroy) }
  it { should belong_to(:country) }

  it { should validate_presence_of(:name) }

  it { should define_enum_for(:type).with_values(%i[region state ceremonial_county county canton]) }
end
