require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class SitesController < ApplicationController

    def index
      @sites = HotenticEngine::Site.all
    end 

    def show
      redirect_to controller: :pages, action: 'show', site_id: params[:id], path: 'homepage'
    end





  end
end
