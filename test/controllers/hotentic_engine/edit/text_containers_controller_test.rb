require 'test_helper'

module HotenticEngine
  class HotenticEngine::Edit::TextContainersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get update" do
      get hotentic_engine_edit_text_containers_update_url
      assert_response :success
    end

  end
end
