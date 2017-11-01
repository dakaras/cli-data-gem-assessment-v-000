class StockScreener::Quote
  attr_accessor :ticker, :name, :price, :change, :volume, :url

  def self.session
    # I should see many instances of Quote
    # puts "Gold Miner Quotes For Today's Market Session:"
    # puts <<-DOC.gsub /^\s+/, ""
    # 1. TICKER:  NEM  NAME:  Newmont Mining  PRICE:  $36.23  CHANGE: 1.20%  VOLUME: 1,807,123
    # DOC

    quote_1 = self.new

    quote_1.ticker = "NEM"
    quote_1.name = "Newmont Mining"
    quote_1.price = "$36.23"
    quote_1.change = "1.20%"
    quote_1.volume = "1,807,123"
    quote_1.url = "https://finviz.com/quote.ashx?t=NEM&ty=c&p=d&b=1"

    quote_2 = self.new

    quote_2.ticker = "GFI"
    quote_2.name = "GOLD FIELDS"
    quote_2.price = "$3.98"
    quote_2.change = "-0.62%"
    quote_2.volume = "1,235,415"
    quote_2.url = "https://finviz.com/quote.ashx?t=GFI&ty=c&p=d&b=1"
  end
end
