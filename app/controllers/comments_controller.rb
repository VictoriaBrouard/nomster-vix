class CommentsController < ApplicationController

	def create
		@place = Place.where(:id => params[:place_id]).first
		@place.comments.create(comment_params.merge(:user => current_user))
		redirect_to place_path(@place)
	end

	private

	def comment_params
		params.require(:comment).permit(:message, :rating)
	end

end
