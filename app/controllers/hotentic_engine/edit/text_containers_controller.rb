require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Edit::TextContainersController < ApplicationController

    def edit
      @text = HotenticEngine::TextContainer.find_by_reference(params[:id])
      @current_page_id = params[:current_page];
    end

    def update
      @text_container = HotenticEngine::TextContainer.find(params[:id])
      @current_page = HotenticEngine::Page.find(params[:current_page])

      if @text_container && @text_container.update_attributes(text_container_params)
        redirect_to edit_site_page_url(@current_page.site.name, @current_page.path), notice: "La page a bien été mise à jour."
      else
        render nothing: true, status: 500
      end
    end

    private

      def text_container_params
        params.require(:text_container).permit(:reference, :content, :page_id, :site_id)
      end

  end
end
