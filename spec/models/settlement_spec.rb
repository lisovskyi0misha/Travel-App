# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Settlement, type: :model do
  it { should belong_to(:administrative_devision) }
  it { should have_many(:accommodations).dependent(:nullify) }

  it { should validate_presence_of(:name) }

  it { should define_enum_for(:type).with_values(%i[city countryside]) }
end
