class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]

  def index

    #getting Coinmarketcap info
    # require 'net/http'
    # require 'json'

    # @url = 'https://api.coinmarketcap.com/v1/ticker/'
    # @uri = URI(@url)
    # @response = Net::HTTP.get(@uri)
    # @coins = JSON.parse(@response)

    # @mycoins = ['BTC', 'BCH', 'XRP', 'ETH','EOS']
    
  end

  def lookup
    @symbol = params[:sym]

    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    
    if @symbol
      @symbol = @symbol.upcase
    end
    
  end

  def quotes
    #getting Coinmarketcap info
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)

  end
end
