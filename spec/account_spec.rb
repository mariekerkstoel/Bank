require 'spec_helper'
require 'account'
require 'transaction'

describe Account do
  let(:account) { described_class.new }
  let(:account1) { described_class.new(64) }
  let(:transaction) { double :transaction, new: 'uqzegfiuze'}
  describe '#balance' do
    it 'should show me an initial balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'should be able to initialize with a balance other than 0' do
      expect(account1.balance).to eq(64)
    end
  end

  describe '#add_transaction' do
    it 'should create a transaction' do
      account.add_transaction(4, 'Withdrawal')
      expect(account.transaction).to be_truthy
    end
    it 'transaction should receive to new' do
      account.add_transaction(4, 'Withdrawal', transaction)
      expect(transaction).to receive(:new)
    end
    it 'should save a transaction' do
      account.add_transaction(6, 'Deposit')
      expect(account.transactions).to_not be_empty
    end
    it 'should take an argument type' do
      expect { account.add_transaction }.to raise_error
    end
    it 'should add to the balance if a deposit has been made' do
      account.add_transaction(6, 'Deposit')
      expect(account.balance).to eq(6)
    end
    it 'should subtract from the balance if a withdrawal is made' do
      account.add_transaction(10, 'Deposit')
      account.add_transaction(6, 'Withdrawal')
      expect(account.balance).to eq(4)
    end
    it 'should save the balance of the account after the transaction' do
      account.add_transaction(10, 'Deposit')
      expect(account.transactions[0].balance_transaction).to eq(10)
    end
    it 'should save the balance of the account after the transaction' do
      account.add_transaction(10, 'Deposit')
      account.add_transaction(6, 'Withdrawal')
      expect(account.transactions[0].balance_transaction).to eq(10)
      expect(account.transactions[1].balance_transaction).to eq(4)
    end
  end

  describe '#print_account_statement' do
    it 'should print account information' do
      account.add_transaction(4, 'Withdrawal')
      expect(account.print_account_statement).to_not be_nil
    end
  end
end
