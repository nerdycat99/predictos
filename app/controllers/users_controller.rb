class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@results = get_results
	end

	def get_results
      Result.all
  	end
end
