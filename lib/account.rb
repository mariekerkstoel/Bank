require 'transaction'
class Account
  attr_reader :balance, :transactions, :transaction

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_transaction(transaction = Transaction.new)
    @transaction = transaction
    @transactions << @transactions
  end
end
