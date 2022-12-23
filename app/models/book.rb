class Book < ApplicationRecord
  
  validates :title, presence: true
  validates :body, presence: true
  
  has_one_attached :profile_image
  book = belongs_to :user

  def get_profile_image
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end
  
end
