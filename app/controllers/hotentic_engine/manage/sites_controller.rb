require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Manage::SitesController < ApplicationController

    def index
      @sites = HotenticEngine::Site.all
    end

    def show
      @site = HotenticEngine::Site.find(params[:id])
    end

    def edit
      @site = HotenticEngine::Site.find(params[:id])
    end

    def update
      @site = HotenticEngine::Site.find(params[:id])
      if @site.update_attributes(sites_params)
        redirect_to manage_site_path(@site)
      else
        redirect_to edit_manage_site_path(@site)
      end
    end

    private

    def sites_params
      params.require(:site).permit(:name)
    end


  end
end
