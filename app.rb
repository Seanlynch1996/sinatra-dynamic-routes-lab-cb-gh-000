require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    r_name = ""
    @name.each_char do |a|
      r_name = a + r_name
    end
    @name = r_name
    "#{@name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @num = @num * @num
    "#{@num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @phrase
    end
  end
  
end
