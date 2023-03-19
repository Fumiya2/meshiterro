class PostImagesController < ApplicationController
    
  def new
    @post_image = PostImage.new
  end
  
  def creat
    @post_image = PostImage.new(post_iamge_params)
    @post_image.user.id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.all
  end

  def show
  end

  def destroy
  end
 
 
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
