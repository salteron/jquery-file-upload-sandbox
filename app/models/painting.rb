class Painting < ActiveRecord::Base
  has_attached_file :image, styles: {thumb: '100x100#'}

  validates_attachment :image,
    content_type: {content_type: %w(image/jpg image/jpeg image/png image/gif)}
end
