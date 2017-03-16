module HotenticEngine
  class Site < ApplicationRecord
    belongs_to :site_template, :class_name => 'HotenticEngine::SiteTemplate'
    has_many :pages, :class_name => 'HotenticEngine::Page', dependent: :destroy
    has_many :text_containers, :class_name => 'HotenticEngine::TextContainer', dependent: :destroy
    has_many :image_containers, :class_name => 'HotenticEngine::ImageContainer', dependent: :destroy

    validates_uniqueness_of :name

    def get_first_page
      HotenticEngine::Page.where("site_id = ?", id).order(:order).first
    end

  end
end
