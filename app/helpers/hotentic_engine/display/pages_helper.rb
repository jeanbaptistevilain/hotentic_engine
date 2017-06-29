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


    def image_container(reference, editable, size = :large)
      containers = editable.image_content(reference)

      if !containers.blank?
        img_container = "<div>"
        containers.collect {|c| img_container += "#{image_tag c.image.url(size), alt: c.image_file_name}"}
        img_container += "</div>"
        img_container.html_safe
      else
        image_tag '/pictures/missing.png'
      end
    end
    alias_method :img, :image_container





  end
end








