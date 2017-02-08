module HotenticEngine
  class Site < ApplicationRecord
    belongs_to :hotentic_engine_site_template, :class_name => 'HotenticEngine::SiteTemplate'
    has_many :hotentic_engine_pages, :class_name => 'HotenticEngine::Page'
    has_many :hotentic_engine_text_containers, :class_name => 'HotenticEngine::TextContainer'
    has_many :hotentic_engine_image_containers, :class_name => 'HotenticEngine::ImageContainer'




  end
end
