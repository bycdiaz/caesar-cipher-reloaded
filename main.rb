require 'sinatra'
require './caesar_cipher.rb'
require 'erb'

before do
  set_title
end

def set_title
  @title
end

get '/' do
  @title = "Welcome!"
  erb :index
end