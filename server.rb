require 'sinatra'
require_relative 'controller/moodboard_controller'
require 'json'



get '/' do 
	'Welcome to Moodboard'
end


get '/cats' do
 arry = []
 moodboard_cats = MoodboardController.new
 cats = moodboard_cats.get_cats
#
 cats.each do |cat|
 	url = cat.urls["raw"]
 	arry.push(url)
 end
 
 content_type :json
  { :cat_arry => arry }.to_json


end