class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/users/:id' do
  @user = User.find(params[:id])
  erb :user_show
end

post '/water_supplies' do
  user = User.find(params[:user_id])
  water_supply = WaterSupply.create(user: user, received: params[:received])

end

post '/water_complaints' do
  user = User.find(params[:user_id])
  water_complaint = WaterComplaint.create(user: user, complaint: params[:complaint], resolved: false)