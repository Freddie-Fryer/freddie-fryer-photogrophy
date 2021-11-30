class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :project

  validates :photo, :orientation, presence: true
end
