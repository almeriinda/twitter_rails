class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  delegate :filename, to: :image, allow_nil: true

end
