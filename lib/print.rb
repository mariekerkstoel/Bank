class Print
  def print_statement(account_information)
    puts "Date || Credit || Debit || Balance "
    iteration(account_information)
  end

  private
  
  def iteration(array)
    array.each {|transaction|
      print "#{transaction.date}   "
      print "#{transaction.balance_transaction}   "
      puts "#{transaction.action.amount}   "
    }
  end
end
