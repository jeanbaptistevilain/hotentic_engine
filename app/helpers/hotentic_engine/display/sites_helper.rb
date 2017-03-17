module HotenticEngine
  module Display::SitesHelper

    def main_navigation(site_pages, options = {})
      render "/shared_partials/navigation", pages: site_pages
    end
    alias_method :nav, :main_navigation

  end
end
