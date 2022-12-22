class Book < ApplicationRecord
  
  has_one_attached :image
  book = belongs_to :user

  
end
