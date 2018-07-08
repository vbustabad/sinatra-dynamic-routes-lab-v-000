require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i**2
    square.to_s
  end

  get '/say/:number/:phrase' do
    params[:number].to_i.times do
      params[:phrase]
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string_of_words = "params[:word1].gsub(/""/, "")/params[:word2].gsub(/""/, "")/params[:word3].gsub(/""/, "")/params[:word4].gsub(/""/, "")/params[:word5].gsub(/""/, "")."
    string_of_words.gsub("/", " ")
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when params[:add] 
      params[:number1].to_i + params[:number2].to_i
    when params[:subtract]
      params[:number1].to_i - params[:number2].to_i
    when params[:multiply]
      params[:number1].to_i * params[:number2].to_i
    when params[:divide]
      params[:number1].to_i / params[:number2].to_i
    end 
  end

end
