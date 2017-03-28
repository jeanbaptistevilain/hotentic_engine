require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Edit::TextContainersController < ApplicationController


    def update
      @page = HotenticEngine::Page.find(params[:page_id])
      @text_container = HotenticEngine::TextContainer.find_by_reference(params[:reference])

      if @text_container && @text_container.update_attributes(text_container_params)
        redirect_to edit_site_page_url(@page.site.name, @page.path), status: :see_other, notice: "La page a bien été mise à jour."
      else
        render nothing: true, status: 500
      end
    end

    private

    def text_container_params
      params.permit(:reference, :content, :page_id)
    end

  end
end
