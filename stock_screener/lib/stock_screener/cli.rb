class StockScreener::CLI
#Our CLI Controller/Business Logic
  def call
    list_quotes
    menu
    goodbye
  end

  def list_quotes
    puts "Gold Miner Quotes For Today's Market Session:"
    puts <<-DOC.gsub /^\s+/, ""
    1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    DOC
    @quotes = StockScreener::Quote.session
  end


  def menu
    puts "Enter the number of the quote you would like investor data on."
    puts "Type list to see quotes."
    puts "Type exit to finish."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @quotes[input.to_i-1]
      elsif input == "list"
        list_quotes
      else
        puts "Please type list for the quotes or exit to finish."
      end
    end
  end

  def goodbye
    puts "Thank you for checking gold miner quotes using our app!"
  end
end