module HotenticEngine
  module Display::PagesHelper

    def text_container(reference, editable)
      html_output = editable.text_content(reference)
      html_output.html_safe
    end
    alias_method :txt, :text_container


    def link_container(reference, path, editable)
      container = editable.text_content(reference)
      link_to container.html_safe, path
    end
    alias_method :link, :link_container


    def image_container(reference, editable)
      container = editable.image_content(reference)

      if !container.nil?
        image_tag container.url, alt: container.image_file_name
      else
        image_tag '/pictures/missing.png'
      end
    end
    alias_method :img, :image_container





  end
end








