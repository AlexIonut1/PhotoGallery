class Photo < ApplicationRecord
  #Mounts paperclip image
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  do_not_validate_attachment_file_type :image



end
