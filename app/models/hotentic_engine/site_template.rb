module HotenticEngine
  class SiteTemplate < ApplicationRecord
    has_many :hotentic_engine_site, :class_name => 'HotenticEngine::Site'






  end
end
