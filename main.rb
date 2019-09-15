require 'sinatra'
require './caesar_cipher.rb'
require 'erb'

before do
  set_title
end

def set_title
  @title = "Caesar Cipher"
end

get '/' do
  erb :index
end