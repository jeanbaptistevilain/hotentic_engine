require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class PagesController < ApplicationController

    def show
      @site = HotenticEngine::Site.find_by_name(params[:site_id])
      @page = @site.pages.where("path = ?", params[:id]).first
    end





  end
end
