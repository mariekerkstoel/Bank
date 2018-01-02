require 'deposit'
require 'spec_helper'

describe Deposit do
  let(:deposit) { described_class.new }
  let(:deposit1) { described_class.new(4) }
  describe 'initialize' do
    it 'should initialize with an amount that defaults to 0 if none is given' do
      expect(deposit.amount).to eq(0)
    end
    it 'should have the given amount' do
      expect(deposit1.amount).to eq(4)
    end
  end
end
