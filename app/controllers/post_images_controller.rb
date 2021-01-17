class PostImagesController < ApplicationController
	def new
		@post_image = PostImage.new
	end
	def create
		@post_image = PostImage.new (post_images_params)
		@post_imagge.user_id = current_user.user_id
		@post_image.save
		redirect_to post_images_path
	end
	def index
	end
	def show
	end
	private
	def post_image_params
		params.repuire(:post_image).permit(:shop_name, :image, :caption)
		
	end
end
