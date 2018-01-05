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
    i = 0
    result = ""
    while i < @num
      result += @phrase
      i += 1
    end
    @phrase = result
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    result = ""
    @word1 = params[:word1] + " "
    @word2 = params[:word2] + " "
    @word3 = params[:word3] + " "
    @word4 = params[:word4] + " "
    @word5 = params[:word5] + "."
    @phrase = @word1 + @word2 + @word3 + @word4 + @word5
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @opt = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1 @opt + @num2}"
    
  end
end
