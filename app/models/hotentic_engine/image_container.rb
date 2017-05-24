module HotenticEngine
  class ImageContainer < ApplicationRecord
    belongs_to :site, class_name: 'HotenticEngine::Site', optional: true
    belongs_to :page, class_name: 'HotenticEngine::Page', optional: true
    has_many :contained_images, class_name: 'ContainedImage', dependent: :destroy
    has_many :images, class_name: 'HotenticEngine::Image', through: :contained_images

    accepts_nested_attributes_for :images
    accepts_nested_attributes_for :contained_images, allow_destroy: true

    validate :not_nul_site_or_page
    validates_uniqueness_of :reference

    private

      def not_nul_site_or_page
        if self.page_id.nil? && self.site_id.nil?
          self.errors.add('An error occurred')
        end
      end

  end
end
