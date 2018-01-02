require './lib/transaction.rb'
require './lib/print.rb'

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
    @transaction.balance_transaction = @balance
  end

  def print_account_statement(printer = Print, information = @balance)
    @printer = printer.new
    @printer.print_statement(information)
  end
end
