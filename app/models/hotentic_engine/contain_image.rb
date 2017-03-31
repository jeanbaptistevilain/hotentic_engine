module HotenticEngine
  class ContainImage < ApplicationRecord
    belongs_to :image, class_name: 'HotenticEngine::Image'
    belongs_to :image_container, class_name: 'HotenticEngine::ImageContainer'




  end
end
