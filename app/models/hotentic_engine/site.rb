module HotenticEngine
  class Site < ApplicationRecord
    belongs_to :site_template, :class_name => 'HotenticEngine::SiteTemplate'
    has_many :pages, :class_name => 'HotenticEngine::Page'
    has_many :text_containers, :class_name => 'HotenticEngine::TextContainer'
    has_many :image_containers, :class_name => 'HotenticEngine::ImageContainer'

    validates_uniqueness_of :name

    def to_param
      name.parameterize
    end


  end
end
