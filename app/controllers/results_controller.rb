class ResultsController < ApplicationController

  def new
    @result = Result.new
  end

  def create
    @result = Result.create(result_attributes)
    redirect_to root_path
  end


  private

  def result_attributes
    params.require(:result).permit(:hometeam, :awayteam, :hometeam_result, :awayteam_result)
  end

end
