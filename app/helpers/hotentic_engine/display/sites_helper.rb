module HotenticEngine
  module Display::SitesHelper

    def main_navigation(site_pages, options = {})
      render "/shared_partials/navigation", pages: site_pages
    end
    alias_method :nav, :main_navigation

    def link_container(reference, path, site_content = false)
      container = site_or_page_content(reference, site_content)
      link_to container, path
    end
    alias_method :link, :link_container

    private

      def site_or_page_content(reference, site)
        unless site
          @page.text_content(reference)
        else
          @site.text_content(reference)
        end
      end

  end
end
