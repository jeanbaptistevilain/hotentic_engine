module HotenticEngine
  class TextContainer < ApplicationRecord
    belongs_to :hotentic_engine_site, :class_name => 'HotenticEngine::Site'
    belongs_to :hotentic_engine_page, :class_name => 'HotenticEngine::Page'







  end
end
