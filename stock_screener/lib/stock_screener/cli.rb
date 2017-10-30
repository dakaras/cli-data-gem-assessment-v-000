#Our CLI Controller/Business Logic
class StockScreener::CLI

  def call
    puts "Gold Miner Quotes For Today's Market Session:"
    list_quotes
    menu
    goodbye
  end

  def list_quotes
    puts <<-DOC.gsub /^\s+/, ""
    1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    DOC
  end

  def menu
    puts "Enter the number of the quote you would like more data on. Type exit to finish."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "MARKET CAP:   DIVIDEND:    P/E:   ROE:    ROA:    NET PROFIT MARGIN:    PERF YTD: "
      when "2"
        puts "MARKET CAP:   DIVIDEND:    P/E:   ROE:    ROA:    NET PROFIT MARGIN:    PERF YTD: "
      end
    end
  end

  def goodbye
    puts "Thank you for checking quotes for the gold miners using our app!" 
  end
end
