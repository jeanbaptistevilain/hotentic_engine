require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Manage::PagesController < ApplicationController
    before_action :set_site

    def index
      @pages = @site.pages
    end

    def new
      @page = HotenticEngine::Page.new(site_id: @site.id)
    end

    def create
      @page = HotenticEngine::Page.new(pages_params)
      if @page.save
        redirect_to manage_site_pages_path(@site.id)
      else
        render action: :new
      end
    end

    def edit
      @page = HotenticEngine::Page.find(params[:id])
    end

    def update
      @page = HotenticEngine::Page.find(params[:id])
      if @page.update_attributes(pages_params)
        redirect_to manage_site_pages_path(@site.id)
      else
        render action: :edit
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

    def set_site
      unless params[:site].blank?
        @site = HotenticEngine::Site.find(params[:site])
      end
    end
  end
end
