require 'spec_helper'
require 'account'

describe Account do
  let (:account) {described_class.new()}
  let (:account1) {described_class.new(64)}
  describe '#balance' do
    it 'should show me an initial balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'should be able to initialize with a balance other than 0' do
      expect(account1.balance).to eq(64)
    end
  end
end
