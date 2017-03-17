module HotenticEngine
  module Display::PagesHelper

    def text_container(reference, site_content = false)
      html_output = site_or_page_content(reference, site_content)
      html_output.html_safe
    end
    alias_method :txt, :text_container

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
