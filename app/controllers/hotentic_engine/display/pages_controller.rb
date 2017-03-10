require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Display::PagesController < ApplicationController

    def show
      @site = HotenticEngine::Site.find_by_name(params[:site_id])

      if params[:path] != nil
        @page = @site.pages.where("path = ?", params[:path]).first
        @page_content = @page.text_containers
      else
        @page = @site.pages.where("path = ?", 'homepage').first
        @page_content = @page.text_containers
      end
    end








  end
end
