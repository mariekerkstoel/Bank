require 'transaction'
class Account
  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_transaction
    @transaction = Transaction.new
    @transactions << @transactions
  end
end
