require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Manage::PagesController < ApplicationController

    def index
    end

    def new
      @site = HotenticEngine::Site.find(params[:site_id])
      @page = HotenticEngine::Page.new(site_id: @site.id)
    end

    def create
      @page = HotenticEngine::Page.new(pages_params)
      if @page.save
        redirect_to manage_site_path(@page.site_id)
      else
        redirect_to new_manage_site_page_path(@page.site)
      end
    end

    def edit
      @page = HotenticEngine::Page.find(params[:id])
      @site = HotenticEngine::Site.find(@page.site_id)
    end

    def update
      @page = HotenticEngine::Page.find(params[:id])
      if @page.update_attributes(pages_params)
        redirect_to manage_site_path(@page.site_id)
      else
        redirect_to edit_manage_page_path(@page.id)
      end
    end

    def destroy
    end

    private

    def pages_params
      params.require(:page).permit(:label, :order, :path,
                                   :priority, :active, :template_path,
                                   :title, :description, :metadata, :site_id)
    end


  end
end
