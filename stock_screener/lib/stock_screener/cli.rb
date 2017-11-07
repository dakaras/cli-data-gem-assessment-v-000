<<<<<<< HEAD
class StockScreener::CLI
#Our CLI Controller/Business Logic
  def call
    list_quotes
    menu
    goodbye
  end

  def list_quotes
    puts "Gold Miner Quotes For Today's Market Session:"
    @quotes = StockScreener::Quote.session
    @quotes.each.with_index(1) do |quote, i|
      puts "#{i}." "#{quote.ticker}"  "#{quote.name}" "#{quote.price}"  "#{quote.change}" "#{quote.volume}"
    end
  end


  def menu
    puts "Enter the number of the quote you would like investor data on."
    puts "Type list to see quotes."
    puts "Type exit to finish."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        @quotes[input.to_i-1]
      elsif input == "list"
        list_quotes
      elsif "exit"
        goodbye
        break
      else
        puts "Please type list for the quotes or exit to finish."
      end
    end
  end

  def goodbye
    puts "Thank you for checking gold miner quotes using our app!"
  end
end
