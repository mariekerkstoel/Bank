require 'date'
require './lib/deposit.rb'
require './lib/withdrawal.rb'

class Transaction
  attr_reader :date, :action

  def initialize(amount, type)
    @date = Time.new
    create_action(amount, type)
  end

  def create_action(amount, type, deposit = Deposit, withdrawal = Withdrawal)
    @action = deposit.new(amount) if type == 'Deposit'
    @action = withdrawal.new(amount) if type == 'Withdrawal'
  end
end
