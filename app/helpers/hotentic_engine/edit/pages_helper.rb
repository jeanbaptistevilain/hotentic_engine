module HotenticEngine
  module Edit::PagesHelper

    def text_container(reference, editable)
      html_output =
          "<text-editor id='#{reference}'>" +
              editable.text_content(reference) +
              link_to('edit content', edit_edit_text_container_path(reference, current_page: @page.id), remote: true) +
          '</text-editor>'

      html_output.html_safe
    end
    alias_method :txt, :text_container


    def link_container(reference, path, editable)
      container = editable.text_content(reference)

      html_output =
          "<link-editor id='#{reference}'>
              #{link_to(container.html_safe, path)}
              #{link_to('edit_link', edit_edit_text_container_path(reference, current_page: @page.id), remote: true)}
          </link-editor>".html_safe

    end
    alias_method :link, :link_container


    def image_container(reference, editable, size = :large)
      image = editable.image_content(reference)

      html_output =
          "<image-editor id='#{reference}'>
              #{image_tag(image.image.url(size), alt: image.image_file_name)}
              #{link_to('edit_image', edit_edit_image_container_path(reference, current_page: @page.id), remote: true)}
          </image-editor>".html_safe
    end
    alias_method :img, :image_container



  end
end