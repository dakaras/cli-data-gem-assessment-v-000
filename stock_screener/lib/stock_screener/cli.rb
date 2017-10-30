#Our CLI Controller/Business Logic
class StockScreener::CLI

  def call
    puts "Gold Miner Quotes For Today's Market Session:"
    list_quotes
  end

  def list_quotes
    puts <<-DOC.gsub /^\s+/, ""
    1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    DOC
  end
end
