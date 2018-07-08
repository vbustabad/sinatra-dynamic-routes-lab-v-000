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
    array = []

    params[:number].to_i.times do
      array << params[:phrase]
    end
    array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string_of_words = "params[:word1].gsub(/""/, "")/params[:word2].gsub(/""/, "")/params[:word3].gsub(/""/, "")/params[:word4].gsub(/""/, "")/params[:word5].gsub(/""/, "")."
    binding.pry
    string_of_words.gsub("/", " ")
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when params[:add]
      addition = params[:number1].to_i + params[:number2].to_i
      addition.to_s
    when params[:subtract]
      subtraction = params[:number1].to_i - params[:number2].to_i
      subtraction.to_s
    when params[:multiply]
      multiplication = params[:number1].to_i * params[:number2].to_i
      multiplication.to_s
    when params[:divide]
      division = params[:number1].to_i / params[:number2].to_i
      division.to_s
    end
  end

end
