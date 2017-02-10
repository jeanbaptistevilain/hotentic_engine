module HotenticEngine
  class Page < ApplicationRecord
    belongs_to :site, :class_name => 'HotenticEngine::Site'
    has_many :text_containers, :class_name => 'HotenticEngine::TextContainer'
    has_many :image_containers, :class_name => 'HotenticEngine::ImageContainer'

    def to_param
      path.parameterize
    end




  end
end
