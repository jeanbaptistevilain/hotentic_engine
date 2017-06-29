require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Edit::ImageContainersController < ApplicationController
    before_action :modify_params, only: :update

    def edit
      @image_container = HotenticEngine::ImageContainer.find_by_reference(params[:id])
      @image_container.contained_images.build(image: HotenticEngine::Image.new) unless !@image_container.contained_images.blank?

      @images = HotenticEngine::Image.all
      @current_page = HotenticEngine::Page.find(params[:current_page])
    end

    def update
      @image_container_updated = HotenticEngine::ImageContainer.find(params[:id])
      @current_page = HotenticEngine::Page.find(params[:current_page])

      if @image_container_updated && @image_container_updated.update_attributes(image_containers_params)
        redirect_to edit_site_page_url(@current_page.site.name, @current_page.path), notice: 'L\'image a été mis à jour'
      else
        render nothing: true, status: 500
      end
    end

    private

    def image_containers_params
      params.require(:image_container).permit(:id, :reference, :page_id, :site_id,
                                              contained_images_attributes: [:id, :image_container_id, :image_id])
    end

    def modify_params
      debugger = true
    end

  end
end