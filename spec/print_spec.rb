require 'spec_helper'
require './lib/print.rb'

describe Print do
  let (:printer) { described_class.new}
  let (:action) { double :action, amount: 6}
  let (:transaction) { double :transaction, date: 80, action: action, balance_transaction: 5}
  let (:account) { double :account, balance: 90, transactions: [transaction]}
  describe '#print' do
    it 'should print bank statement' do
      expect(printer.print_statement(account.transactions)).to_not be_nil
    end
  end
end
