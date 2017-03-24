require_dependency "hotentic_engine/application_controller"

module HotenticEngine
  class Edit::TextContainersController < ApplicationController


    def update
      @text_container = HotenticEngine::TextContainer.where("reference = ?", params[:reference])

      if @text_container.update_attributes(text_container_params)
        respond_to do |format|
          format.json
        end
      end
    end

    private

      def text_container_params
        params.require(:reference).permit(:reference, :content, :page_id, :site_id)
      end

  end
end
