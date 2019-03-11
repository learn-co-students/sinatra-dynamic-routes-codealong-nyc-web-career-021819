require_relative 'config/environment'

class App < Sinatra::Base


  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # Code your final two routes here:
    get "/multiply/:num1/:num2" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    "#{@num1.to_i * @num2.to_i}"

  end

end
