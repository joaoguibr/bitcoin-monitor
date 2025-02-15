require 'net/http'
require 'json'
require 'dotenv/load'

class Bitcoin
  def initialize(url, api_key)
    @url = url
    @api_key = api_key
  end

  def bitcoin_price
    puts "The current price of Bitcoin is: US$ #{get_price}"
  end

  private

  def get_price
    url = URI(@url)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["X-Api-Key"] = @api_key

    response = http.request(request)
    data = JSON.parse(response.body)

    data['price'].to_f
  end
end

api_key = ENV['API_KEY']
url = "https://api.api-ninjas.com/v1/cryptoprice?symbol=BTCUSD"

bitcoin = Bitcoin.new(url, api_key)
bitcoin.bitcoin_price
