module HotenticEngine
  module Display::SitesHelper

    def main_navigation(site_pages, options = {})
      render "/shared_partials/navigation", pages: site_pages
    end
    alias_method :nav, :main_navigation

    def link_container(reference, path, editable)
      container = editable.text_content(reference)
      link_to container, path
    end
    alias_method :link, :link_container

  end
end
