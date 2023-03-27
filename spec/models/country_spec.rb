# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should have_many(:administrative_divisions).dependent(:destroy) }

  it { should validate_presence_of(:name) }

  describe 'scopes' do
    describe '#settlements' do
      subject(:with_settlements) { described_class.with_settlements }

      context 'when countries have settlements' do
        let(:countries) { create_list(:country_with_settlements, 5) }

        it { should match_array(countries) }
      end

      context 'when countries do not have settlements' do
        let!(:countries) { build_list(:country, 5) }

        it { should match_array([]) }
      end

      context 'when some countries have settlements' do
        let(:countries) do
          [create_list(:country_with_settlements, 3), build_list(:country, 2)].flatten
        end

        it { should match_array(countries.first(3)) }
      end
    end
  end
end
