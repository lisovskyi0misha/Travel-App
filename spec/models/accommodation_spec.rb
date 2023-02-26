# frozen_string_literal: true

RSpec.describe Accommodation, type: :model do
  it { should belong_to(:user) }
end
