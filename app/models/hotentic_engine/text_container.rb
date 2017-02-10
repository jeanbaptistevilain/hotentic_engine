module HotenticEngine
  class TextContainer < ApplicationRecord
    belongs_to :site, :class_name => 'HotenticEngine::Site'
    belongs_to :page, :class_name => 'HotenticEngine::Page'







  end
end
