require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Display::SitesController < ApplicationController

    def show
      @site = HotenticEngine::Site.find_by_name(params[:id])
      redirect_to controller: :pages, action: 'show', site_id: params[:id], path: @site.get_first_page.path
    end

  end
end
