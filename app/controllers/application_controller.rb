class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/users/:id' do
    @user = User.find(params[:id])
  end

  post '/water_supply' do
    user = User.find(params[:user_id])
    water_supply = WaterSupply.create(user: user, received: params[:received])

  end

  post '/water_complaints' do
    user = User.find(params[:user_id])
    water_complaint = WaterComplaint.create(user: user, complaint: params[:complaint], resolved: false)
  end

  post '/registration' do
   user = User.create(name: params[:name],
     email: params[:email],
     password: params[:password],
     age: params[:age],
     country: params[:country],
     location: params[:location]
      )
      user.to_json
  end


  post '/login' do
       user = User.find_by(email: params[:email])
       if user && user.password == params[:password]
        user. to_json
       else
        {error: "Incorrect email or password"} .to_json
       end
    end

get '/users' do
    users=User.all
    users.to_json
end

get '/water_complaint' do
    water_complaints=WaterComplaint.all
    water_complaints.to_json
end
get '/watersupply' do
    watersupplies=WaterSupply.all
    watersupplies.to_json
end
get '/electricity_complaint' do
    electricity_complaints=ElectricityComplaint.all
    electricity_complaints.to_json
  end

end

