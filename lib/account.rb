require './lib/transaction.rb'
require './lib/print.rb'

class Account
  attr_reader :balance, :transactions, :transaction

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def add_transaction(amount, type, transaction = Transaction)
    @transaction = transaction.new(amount, type)
    @transactions.push(@transaction)
    increment_balance(@transaction)
  end

  def increment_balance(transaction)
    @balance += transaction.action.amount
    transaction.balance_transaction = @balance
  end

  def print_account_statement(printer = Print, information = @transactions)
    @printer = printer.new
    @printer.print_statement(information)
  end
end
