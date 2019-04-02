require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i

    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase] + "\n"
    @number = params[:number].to_i

    "#{@phrase}"*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      ans = @num1 + @num2
      "#{ans}"
    when "subtract"
      ans = @num1 - @num2
      "#{ans}"
    when "multiply"
      ans = @num1 * @num2
      "#{ans}"
    when "divide"
      ans = @num1 / @num2 
      "#{ans}"
    when "modulus"
      ans = @num1 % @num2
    end
  end
    
end