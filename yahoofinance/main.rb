require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'yahoofinance'



get '/' do
 
#    binding.pry
 @stockrequest = params[:stock]
  # @result = "you entered #{@stockrequest}"

  @result = YahooFinance::get_standard_quotes(@stockrequest)[@stockrequest]
  @currentprice = @result.lastTrade

@resultshash = {}
@resultshash["ask"] = @result.ask

  erb :home
end