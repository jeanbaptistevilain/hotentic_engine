module HotenticEngine
  class SiteTemplate < ApplicationRecord
    has_many :sites, class_name: 'HotenticEngine::Site'

    store :template_pages, accessors: [ :pages_location ], coder: JSON

    validates_uniqueness_of :reference

    def full_template_path
      @path = "shared/#{reference}/#{template_path}"
    end

    def template_stylesheets
      @stylesheets_path = "templates/#{reference}"
    end



  end
end
