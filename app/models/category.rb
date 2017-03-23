class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
