require './lib/transaction.rb'
class Account
  attr_reader :balance, :transactions, :transaction

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_transaction(amount, type, transaction: Transaction)
    @transaction = transaction.new(amount, type)
    @transactions.push(@transaction)
    @balance += @transaction.action.amount
  end
end
