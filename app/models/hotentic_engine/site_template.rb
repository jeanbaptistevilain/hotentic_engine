module HotenticEngine
  class SiteTemplate < ApplicationRecord
    has_many :sites, :class_name => 'HotenticEngine::Site'

    store :template_pages, accessors: [ :pages_location ], coder: JSON

    def to_param
      reference.parameterize
    end

  end
end
