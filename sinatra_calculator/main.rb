require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'date'

get '/' do
  erb :home
end

get '/measurement' do


end

get '/squarerootcalc' do

  @first_number = params[:first_number].to_f

  @convert_result = case params[:convert]
  when 'm_to_k'
    @first_number * 1.6093
  when 'f_to_m'
    @first_number * 0.3048
  when 'i_to_c'
    @first_number * 2.54
  when 'k_to_m'
    @first_number * 0.6214
  when 'm_to_f'
    @first_number * 3.2808
  when 'c_to_i'
    @first_number * 0.3937
  when 'sqrt'
    Math.sqrt(@first_number)
  end


  erb :advancedcalc
end

get '/christmas' do
today = Date.today
christmas = Date.new(today.year, 12, 25)
@sleeps = (christmas - today).to_i

  erb :christmas
end

get '/about_us' do
  erb :about_us
end

get '/multiply/:x/:y' do
  @result = params[:x].to_i * params[:y].to_i
  erb :result
end

get '/calculate' do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  @operator = params[:operator]

  @result = case @operator
  when '+'
    @first_number + @second_number
  when '-'
    @first_number - @second_number
  when '*'
    @first_number * @second_number
  when '/'
    @first_number / @second_number
  end


  erb :result
end

get '/faqs' do
  erb :faqs
end