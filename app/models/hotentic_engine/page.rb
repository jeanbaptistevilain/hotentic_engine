module HotenticEngine
  class Page < ApplicationRecord

    belongs_to :site, :class_name => 'HotenticEngine::Site'
    has_many :text_containers, :class_name => 'HotenticEngine::TextContainer'
    has_many :image_containers, :class_name => 'HotenticEngine::ImageContainer'

    validates_uniqueness_of :path, :template_path

    def full_page_template_path
      @path = "shared/#{site.site_template.reference}/#{template_path}"
    end

    def text_content(reference)
      container = text_containers.find_or_create_by!(reference: reference)
      container.content
    end


  end
end
