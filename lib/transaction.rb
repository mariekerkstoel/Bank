require 'date'
require './lib/deposit.rb'
require './lib/withdrawal.rb'

class Transaction
  attr_reader :date, :action

  def initialize(amount, type)
    @date = Time.new
    create_action(amount, type)
  end

  def create_action(amount, type)
    @action = Deposit.new(amount) if type == 'Deposit'
    @action = Withdrawal.new(amount) if type == 'Withdrawal'
  end
end
