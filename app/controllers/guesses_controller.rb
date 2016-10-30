class GuessesController < ApplicationController
  def index
    # params = {"first_number"=>"4", "second_number"=>"5", "third_number"=>"6"}

    @first = params["first_number"]
    @second = params["second_number"]
    @third = params["third_number"]

    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    g.save

    @list = Guess.all

    render("guesses/index.html.erb")
  end



  def answer
    # params = {"rule"=>"Hi there"}

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
end
