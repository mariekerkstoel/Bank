class Print
  def print_statement(account_information)
    puts "Date || Credit || Debit || Balance "
    account_information.each {|transaction|
      print "#{transaction.date}   "
      print "#{transaction.balance_transaction}   "
      puts "#{transaction.action.amount}   "
    }
  end
end
