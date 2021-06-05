class Post < ApplicationRecord
  
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_rich_text :content
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, default_url: ""
  validates_attachment :avatar,
                       content_type: { content_type: /\Aimage\/.*\z/ },
                       size: { less_than: 1.megabyte }
end
