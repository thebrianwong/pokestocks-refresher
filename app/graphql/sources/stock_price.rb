require 'uri'
require 'net/http'

class Sources::StockPrice < GraphQL::Dataloader::Source
  def fetch(symbols)
    symbols_params = symbols.join("%2C")
    url = URI("https://data.alpaca.markets/v2/stocks/trades/latest?symbols=#{symbols_params}&feed=iex")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["accept"] = 'application/json'
    request["APCA-API-KEY-ID"] = ENV["APCA_API_KEY_ID"]
    request["APCA-API-SECRET-KEY"] = ENV["APCA_API_SECRET_KEY"]

    response = http.request(request)
    response_hash = JSON.parse(response.body)
    trade_data = response_hash["trades"]

    prices = []
    symbols.each { |symbol| prices.push(trade_data[symbol]["p"])}
    prices
  end
end
