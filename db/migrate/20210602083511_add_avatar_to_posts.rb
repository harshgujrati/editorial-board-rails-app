class AddAvatarToPosts < ActiveRecord::Migration[6.0]
  def self.up
    add_attachment :posts, :avatar
  end

  def self.down
    remove_attachment :posts, :avatar
  end
end
