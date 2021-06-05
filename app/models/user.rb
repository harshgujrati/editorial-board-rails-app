class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, default_url: "/images/:style/missinguser.jpg"
  validates_attachment :avatar,
                       content_type: { content_type: /\Aimage\/.*\z/ },
                       size: { less_than: 1.megabyte }
end
