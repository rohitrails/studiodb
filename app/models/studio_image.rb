class StudioImage < ApplicationRecord
  mount_uploader :image, ImageUploader
end
