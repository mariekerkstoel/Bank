require 'transaction'
require 'spec_helper'

describe Transaction do
  let(:transaction) { described_class.new }
  describe 'date' do
    it 'every transaction should have a date' do
      expect(transaction.date).to be_truthy
    end
   end
end
