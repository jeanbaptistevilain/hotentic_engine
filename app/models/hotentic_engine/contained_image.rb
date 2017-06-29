module HotenticEngine
  class ContainedImage < ApplicationRecord
    belongs_to :image, class_name: 'Image', dependent: :destroy
    belongs_to :image_container, class_name: 'ImageContainer'

    accepts_nested_attributes_for :image


  end
end
