require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class SitesController < ApplicationController

    def index
      @sites = HotenticEngine::Site.all
    end

    def show
      @site = HotenticEngine::Site.find_by_name(params[:id])
    end





  end
end
