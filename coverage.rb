# one file which defines the actions that the server can respond to.
=begin
require 'sinatra' # load sinatra
 require 'sinatra/reloader' # prevents having to restart app
 require 'sqlite' # gem to connect to the database

 # connect to the database file "filename.db"
 db = SQLite3::Database.new('filename.db')

 # Define the Endpoints
 # this will be all the possible requests sinatra will respond to

 get '/path1' do
   @var1 = "value" # set an instance variable to use in the template
   erb :templatename # render a template "template.erb" found in the views folder
 end

 post '/path2' do
 end

 put '/path3' do
 end

 delete '/path4' do
 end
 
 =end
 
 require 'sinatra' # load sinatra
 require 'sinatra/reloader' # prevents having to restart app
 require 'sqlite' # gem to connect to the database