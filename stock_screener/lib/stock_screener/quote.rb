class StockScreener::Quote

  def self.today
    # I should see many instances of Quote
    puts "Gold Miner Quotes For Today's Market Session:"
    puts <<-DOC.gsub /^\s+/, ""
    1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    DOC
    quote_1 = Quote.new
    quote_1.ticker = "NEM"
    quote_1.name = "Newmont Mining"
    quote_1.price = "$36.23"
    quote_1.change = "1.20%"
    quote_1.volume = "1,807,123"
    quote_1.url = "https://finviz.com/quote.ashx?t=NEM&ty=c&p=d&b=1"
  end
end
