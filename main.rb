require 'sinatra'
require './caesar_cipher.rb'
require 'erb'

before do
  set_title
end

def set_title
  @title = "Caesar Cipher"
end

def user_input
  @word = params[:word].to_s
  @shift = params[:shift].to_i
  @result = caesar_cipher(@word, @shift)
end

get '/' do
  erb :index
end

post '/' do
  user_input
  erb :index
end