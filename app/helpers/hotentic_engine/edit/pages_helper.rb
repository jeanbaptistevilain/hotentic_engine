module HotenticEngine
  module Edit::PagesHelper

    def text_container(reference, site_content = false)
      html_output =
        "<hotentic-editor id='#{reference}'>" +
            @page.text_content(reference) +
        '</hotentic-editor>'

      html_output.html_safe
    end
    alias_method :txt, :text_container



  end
end
