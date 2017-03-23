class Video < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
