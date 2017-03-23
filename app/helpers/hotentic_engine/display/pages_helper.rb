module HotenticEngine
  module Display::PagesHelper

    def text_container(reference, editable)
      html_output = editable.text_content(reference)
      html_output.html_safe
    end
    alias_method :txt, :text_container

    def link_container(reference, path, editable)
      container = editable.text_content(reference)
      link_to container, path
    end
    alias_method :link, :link_container





  end
end








