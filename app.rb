require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

get "/square/:number" do
  @squared = params[:number].to_i * params[:number].to_i
  "#{@squared}"
end

get "/say/:number/:phrase" do
  @phrased = params[:phrase] * params[:number].to_i
  "#{@phrased}"
end

get "/say/:word1/:word2/:word3/:word4/:word5" do

  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get "/:operation/:number1/:number2" do
if params[:operation] == "add"
  @operated = params[:number1].to_i + params[:number2].to_i
  "#{@operated}"
elsif params[:operation] == "subtract"
  @operated = params[:number1].to_i - params[:number2].to_i
  "#{@operated}"
elsif params[:operation] == "divide"
  @operated = params[:number1].to_i / params[:number2].to_i
  "#{@operated}"
elsif params[:operation] == "multiply"
  @operated = params[:number1].to_i * params[:number2].to_i
  "#{@operated}"
end



end


end

# # Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in
#  a string the number of times given.
# #
# # Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a
# string containing all five words (i.e. word1 word2 word3 word4 word5).
# #
# # Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide)
# and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
