# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should have_many(:administrative_devisions).dependent(:destroy) }

  it { should validate_presence_of(:name) }
end
