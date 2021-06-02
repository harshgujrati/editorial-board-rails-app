class AddAvatarToAlumnis < ActiveRecord::Migration[6.0]
  def self.up
    add_attachment :alumnis, :avatar
  end

  def self.down
    remove_attachment :alumnis, :avatar
  end
end
