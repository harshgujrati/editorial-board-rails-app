class Alumni < ApplicationRecord
has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment :avatar,
                       content_type: { content_type: /\Aimage\/.*\z/ },
                       size: { less_than: 1.megabyte }

  validates :description, length: {minimum: 5, maximum: 90}, allow_blank: true
  validates :profession, length: {minimum: 5, maximum: 30}, allow_blank: true
end
