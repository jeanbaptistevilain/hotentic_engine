module HotenticEngine
  class Page < ApplicationRecord

    belongs_to :site, :class_name => 'HotenticEngine::Site'
    has_many :text_containers, :class_name => 'HotenticEngine::TextContainer', dependent: :destroy
    has_many :image_containers, :class_name => 'HotenticEngine::ImageContainer', dependent: :destroy

    validates_uniqueness_of :path

    def full_page_template_path
      "shared/#{site.site_template.reference}/#{template_path}"
    end

    def text_content(reference)
      container = text_containers.find_or_create_by!(reference: reference)
      container.content
    end


  end
end
