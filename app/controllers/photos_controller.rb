class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params.merge(:place_id => @place))
		redirect_to place_path(@place)
	end

	private

	def photo_params
		params.require(:photo).permit(:caption, :place_id, :picture)
	end
end
