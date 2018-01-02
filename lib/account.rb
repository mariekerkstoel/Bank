require './lib/transaction.rb'
class Account
  attr_reader :balance, :transactions, :transaction

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_transaction(amount, type)
    @transaction = Transaction.new(amount, type)
    @transactions.push(@transaction)
  end


end
