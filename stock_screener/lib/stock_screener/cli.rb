#Our CLI Controller/Business Logic
class StockScreener::CLI

  def call
    puts "Gold Miner Quotes For Today's Market Session:"
    list_quotes
    menu
  end

  def list_quotes
    puts <<-DOC.gsub /^\s+/, ""
    1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    DOC
  end

  def menu
    puts "Enter the number of the quote you would like more data on."
    input = gets.strip

    case input
    when "1"
      puts "MARKET CAP:   DIVIDEND:    P/E:   ROE:    ROA:    NET PROFIT MARGIN:    PERF YTD: "
    when "2"
      puts "MARKET CAP:   DIVIDEND:    P/E:   ROE:    ROA:    NET PROFIT MARGIN:    PERF YTD: "
    end
  end
end
