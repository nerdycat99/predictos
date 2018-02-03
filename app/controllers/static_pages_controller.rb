class StaticPagesController < ApplicationController

  def index
  end

  def leaderboard
    @results = get_results
    @users = get_users
  end

  def get_results
      Result.all
  end

  def get_users
      User.all
  end
  
end
