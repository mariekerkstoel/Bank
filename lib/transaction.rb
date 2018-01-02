require 'date'
require './lib/deposit.rb'
require './lib/withdrawal.rb'

class Transaction
  attr_reader :date

  def initialize
    @date = Date.new
  end
end
