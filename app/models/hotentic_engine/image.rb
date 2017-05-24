module HotenticEngine
  class Image < ApplicationRecord
    has_many :contained_images, class_name: 'ContainedImage', dependent: :destroy
    has_many :image_containers, class_name: 'ImageContainer', through: :contained_images

    has_attached_file :image,
                      {
                          styles: {
                              xlarge: ['1600x1200', :jpg],
                              large: ['1280x960>', :jpg],
                              medium: ['800x600>', :jpg],
                              small: ['320x240', :jpg],
                              thumb: ['200x200>', :png]
                          },
                          url: '/pictures/:id/:style/:basename.:extension',
                          path: ':rails_root/public/pictures/:id/:style/:basename.:extension',
                          default_url: ':rails_root/public/picture/missing.png'
                      }

    validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/jpg', 'image/png']
    validates_attachment_size :image, less_than: 25.megabytes




  end
end
