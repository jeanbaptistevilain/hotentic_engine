require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Manage::ImagesController < ApplicationController

    def index
      @site = set_site
      @images = @site.get_images

      @image = HotenticEngine::Image.new
    end

    def create
      @site_id = params[:site_reference]
      @image = HotenticEngine::Image.new(image_params)

      if @image.save
        redirect_to manage_site_images_url, notice: 'The items was added'
      else
        redirect_to manage_site_images_url, notice: 'Nothing was added'
      end
    end

    def destroy
      @image = HotenticEngine::Image.find(params[:id])

      if @image.destroy
        redirect_to manage_site_images_url, notice: 'Image deleted'
      else
        redirect_to manage_site_images_url, notice: 'Error when delete action'
      end
    end

    private

    def image_params
      params.require(:image).permit(:id, :image, :site_reference)
    end

    def set_site
      @site = HotenticEngine::Site.find(params[:site])
    end


  end
end
