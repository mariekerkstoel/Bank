require 'withdrawal'
require 'spec_helper'

describe Withdrawal do
  let(:withdrawal) { described_class.new }
  let(:withdrawal1) { described_class.new(4) }
  describe 'initialize' do
    it 'should initialize with an amount that defaults to 0 if none is given' do
      expect(withdrawal.amount).to eq(0)
    end
    it 'should have the given amount' do
      expect(withdrawal1.amount).to eq(4)
    end
  end
end
