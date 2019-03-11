require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  # get '/medicines/:id' do
  #   @medicine = all_the_medicines.select do |medicine| medicine.id == params[:id]
  #   end.first
  #   erb :'/medicines/show.html'
  # end

  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end 

  get '/multiply/:number1/:number2' do
    # binding.pry
    @total = params[:number1].to_i * params[:number2].to_i
    @total.to_s
  end
end