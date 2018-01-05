require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    r_name = ""
    @name.each_char do |a|
      r_name = r_name + a
    end
    @name = r_name
    "#{@name}"
  end

end
