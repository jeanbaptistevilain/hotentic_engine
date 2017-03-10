module HotenticEngine
  class ImageContainer < ApplicationRecord
    belongs_to :site, :class_name => 'HotenticEngine::Site', optional: true
    belongs_to :page, :class_name => 'HotenticEngine::Page', optional: true






  end
end
