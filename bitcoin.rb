# frozen_string_literal: true

require 'net/http'
require 'json'
require 'bye'

def fetch_bitcoin_price
    puts 'Calculating bitcoin price...'

    url_in_dollar = URI('https://api.kraken.com/0/public/Ticker?pair=XBTUSD')
    url_in_euro = URI('https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=eur')
    url_in_brl = URI('https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=brl')

    response_in_dollar = Net::HTTP.get(url_in_dollar)
    # response_in_euro = Net::HTTP.get(url_in_euro)
    # response_in_brl = Net::HTTP.get(url_in_brl)

    bitcoin_price_in_dollar = JSON.parse(response_in_dollar)
    # bitcoin_price_in_euro = JSON.parse(response_in_euro)
    # bitcoin_price_in_brl = JSON.parse(response_in_brl)

    binding.pry

    puts "Bitcoin price in dollar: US$#{bitcoin_price_in_dollar}"
    # puts "Bitcoin price in euro: €#{bitcoin_price_in_euro}"
    # puts "Bitcoin price in brl: R$#{bitcoin_price_in_brl}"

    sleep 5
end

fetch_bitcoin_price
