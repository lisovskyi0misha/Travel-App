# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accommodation, type: :model do
  it { should belong_to(:user) }
  it { define_enum_for(:type)}
  it { should allow_values(:hotel, :apartment).for(:type) }

  describe '.paginate' do
    subject(:paginate) { described_class.paginate(page) }

    context 'when one page' do
      let(:page) { 1 }

      before { create_list(:accommodation, 5) }

      it { is_expected.to match_array(described_class.all.order(created_at: :desc)) }
    end

    context 'when more than one page' do
      before { create_list(:accommodation, 7) }

      context 'with first page' do
        let(:page) { 1 }

        it { is_expected.to match_array(described_class.order(created_at: :desc).first(5)) }
      end

      context 'with second page' do
        let(:page) { 2 }

        it { is_expected.to match_array(described_class.order(created_at: :desc).last(2)) }
      end

      context 'with larger page number than possible' do
        let(:page) { 3 }

        it { is_expected.to match_array(described_class.order(created_at: :desc).last(2)) }
      end

      context 'with nil page' do
        let(:page) { nil }

        it { is_expected.to match_array(described_class.order(created_at: :desc).first(5)) }
      end
    end
  end
end
