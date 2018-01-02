require 'spec_helper'
require './lib/print.rb'

describe Print do
  let (:printer) { described_class.new}
  let (:account) { double :account, balance: 90, transactions: ["Anything"] }
  describe '#print' do
    it 'should print bank statement' do
      expect{ printer.print_statement(account.balance) }.to output('90').to_stdout
    end
  end
end
