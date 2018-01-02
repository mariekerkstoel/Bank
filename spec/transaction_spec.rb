require 'transaction'
require 'spec_helper'

describe Transaction do
  let(:transaction) { described_class.new(5, 'Deposit') }
  describe 'initialize' do
    it 'every transaction should have a date' do
      expect(transaction.date).to be_truthy
    end
    it 'should initialize with a balance of 0 that is adjusted later' do
      expect(transaction.balance_transaction).to eq 0
    end
  end
  describe '#create_action' do
    it 'should take 2 arguments' do
      expect { transaction.create_action }.to raise_error
    end
    it 'should create a deposit if type is deposit' do
      transaction.create_action(7, 'Deposit')
      expect(transaction.action).to be_an_instance_of Deposit
    end
    it 'should create a withdrawal if type is withdrawal' do
      transaction.create_action(7, 'Withdrawal')
      expect(transaction.action).to be_an_instance_of Withdrawal
    end
  end
end
