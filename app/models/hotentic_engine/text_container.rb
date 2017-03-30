module HotenticEngine
  class TextContainer < ApplicationRecord
    belongs_to :site, :class_name => 'HotenticEngine::Site', optional: true
    belongs_to :page, :class_name => 'HotenticEngine::Page', optional: true

    before_validation :default_content
    validate :not_nul_site_and_page
    validates_uniqueness_of :reference

    private

    def not_nul_site_and_page
      if self.site_id.nil? && self.page_id.nil?
        self.errors.add("An error occured")
      end
    end

    def default_content
      self.content ||= "<p>default content of text container</p>"
    end

  end
end