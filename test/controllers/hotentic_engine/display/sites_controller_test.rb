require 'test_helper'

module HotenticEngine
  class Display::SitesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get show" do
      get yolo_sites_show_url
      assert_response :success
    end

  end
end