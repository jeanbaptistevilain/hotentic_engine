module HotenticEngine
  module Edit::PagesHelper

    def text_container(reference, editable)
      html_output =
          "<text-editor id='#{reference}'>" +
              editable.text_content(reference) +
          '</text-editor>'

      html_output.html_safe
    end
    alias_method :txt, :text_container


    def link_container(reference, path, editable)
      container = editable.text_content(reference)

      html_output =
          "<link-editor id='#{reference}'>#{link_to(container, path)}</link-editor>".html_safe

    end
    alias_method :link, :link_container



  end
end