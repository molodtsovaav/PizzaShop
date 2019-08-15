#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'byebug'
require 'sinatra/activerecord'

set :database_file, "config/database.yml"

class Product < ActiveRecord::Base


end
get '/' do
  @products = Product.all
	erb :index
end

get '/about' do
  erb :about
end