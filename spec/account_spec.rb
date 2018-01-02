require 'spec_helper'
require 'account'

describe Account do
  let (:account) {described_class.new}
  describe '#balance' do
    it 'should show me an initial balance of 0' do
      expect(account.balance).to eq(0)
    end
  end
end
