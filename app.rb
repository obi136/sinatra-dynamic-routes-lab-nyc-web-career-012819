require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    @product = @squared * @squared
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    duplicate = ""
    @spec_phrase = params[:phrase]
    @number_times = params[:number].to_i
    @number_times.times do
      duplicate += "#{@spec_phrase}\n"
    end
    duplicate
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      answer = @num1 + @num2
    elsif @operation == "subtract"
      answer = @num2 - @num1
    elsif @operation == "multiply"
      answer = @num1 * @num2
    elsif @operation = "divide"
      answer = @num1 / @num2
    end
    answer.to_s
  end


end
