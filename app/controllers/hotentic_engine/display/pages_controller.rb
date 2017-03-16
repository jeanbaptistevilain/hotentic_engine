require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Display::PagesController < ApplicationController

    def show
      @site = HotenticEngine::Site.find_by_name(params[:site_id])

      if params[:path] != nil
        @page = @site.pages.where("path = ?", params[:path]).first
      else
        @page = @site.pages.where("path = ?", 'homepage').first
      end
    end








  end
end
