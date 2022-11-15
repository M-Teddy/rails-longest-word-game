class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end


  def score
    @letters = params[:letters]
    @scores = params[:answer]
    if @scores != @letters
    "Sorry but #{@scores} can't be built out of #{@letters}"
    end
  end
end
