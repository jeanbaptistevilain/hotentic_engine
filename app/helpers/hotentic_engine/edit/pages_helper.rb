module HotenticEngine
  module Edit::PagesHelper

    def text_container(reference, site_content = false)
      unless site_content
        html_output =
            "<hotentic-editor id='#{reference}'>" +
                @page.text_content(reference) +
            '</hotentic-editor>'
      else
        html_output =
            "<hotentic-editor id='#{reference}'>" +
                @site.text_content(reference) +
            '</hotentic-editor>'
      end

      html_output.html_safe
    end
    alias_method :txt, :text_container


    def link_container(reference, path, site_content = false)
      unless site_content
        container = @page.text_content(reference)
        link_to container, path
      else
        container = @site.text_content(reference)
        link_to container, path
      end
    end
    alias_method :link, :link_container



  end
end
