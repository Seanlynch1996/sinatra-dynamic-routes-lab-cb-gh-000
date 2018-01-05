require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    r_name = ""
    @name.each do |a|
      r_name = r_name + a
    end
    "#{r_name}"
  end

end
