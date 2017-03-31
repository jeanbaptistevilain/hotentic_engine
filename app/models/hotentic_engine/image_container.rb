module HotenticEngine
  class ImageContainer < ApplicationRecord
    belongs_to :site, class_name: 'HotenticEngine::Site', optional: true
    belongs_to :page, class_name: 'HotenticEngine::Page', optional: true
    has_many :contain_images, class_name: 'HotenticEngine::ContainImage', dependent: :destroy
    has_many :images, class_name: 'HotenticEngine::Image', through: :contain_image

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
