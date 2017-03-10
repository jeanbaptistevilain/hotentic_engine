module HotenticEngine
  module Display::PagesHelper

    def text_container(reference, site_content = false)
      html_output = @page.text_content(reference)

      html_output.html_safe
    end
    alias_method :txt, :text_container








  end
end
