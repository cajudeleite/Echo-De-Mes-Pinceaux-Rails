class Artwork < ApplicationRecord
  belongs_to :year
  belongs_to :technique
  belongs_to :collection
  belongs_to :status
  belongs_to :user
  has_many_attached :photos
end
