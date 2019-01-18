# one file which defines the actions that the server can respond to.
# Define the Endpoints
# this will be all the possible requests sinatra will respond to

# get '/path1' do
#   @var1 = "value" # set an instance variable to use in the template
#   erb :templatename # render a template "template.erb" found in the views folder
# end

require 'sinatra'
require 'sinatra/activerecord'
require 'bcrypt'
require 'sqlite3'
set :database, "sqlite3:swcover.db"

db = SQLite3::Database.new('swcover.db')

#require './models'

class Request < ActiveRecord::Base
end

get '/' do
    erb :request
end

get '/request' do
 erb :request 
end

post '/request' do
    newreq = Request.new
    newreq.ooh_name=params[:ooh_name]
    newreq.startdate=params[:startdate]
    newreq.enddate=params[:enddate]
    newreq.starttime=params[:starttime]
    newreq.endtime=params[:endtime]
    newreq.todo=params[:todo]
    newreq.save 
    redirect '/pending'
end

get '/pending' do
    @requests = Request.all
    erb :pending 
end

get '/confirm' do
    erb :confirm
end


post '/signup' do
    # find request based on id of request that was clicked on
  #  request = Request
    # add record to Accepted list on calendar page
    request = Request.update
    request.cov_name= params[:cov_name]
    request.save
    redirect '/request'
end

#get '/calendar' do
#    puts "Request entered"
#end






 
