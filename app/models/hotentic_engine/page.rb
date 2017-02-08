module HotenticEngine
  class Page < ApplicationRecord
    belongs_to :hotentic_engine_site, :class_name => 'HotenticEngine::Site'
    has_many :hotentic_engine_text_containers, :class_name => 'HotenticEngine::TextContainer'
    has_many :hotentic_engine_image_containers, :class_name => 'HotenticEngine::ImageContainer'







  end
end
