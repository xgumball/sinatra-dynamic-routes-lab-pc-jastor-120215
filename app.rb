require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
        namerev = params[:name].reverse
        "My name in reverse #{namerev}!"
    end
    
    get '/square/:num' do
        square_num = params[:num].to_i * params[:num].to_i
        "#{square_num}"
    end
    
    get '/say/:number/:phrase' do
        final_string = ""
        (params[:number].to_i).times do
        final_string += "#{params[:phrase]}\n"
    end
        final_string
  end
  
    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
    
    get '/:operation/:number1/:number2' do 
        operation = params[:operation]
        number1 = params[:number1].to_i
        number2 = params[:number2].to_i
        if operation == "add"
            answer = number1 + number2
        elsif operation == "subtract"
            answer = number1 - number2
        elsif operation == "multiply"
            answer = number1 * number2
        elsif operation == "divide"
            answer = number1 / number2
        else
            answer = "Bro do you know simple math?!"
        end
        answer.to_s
    end
end