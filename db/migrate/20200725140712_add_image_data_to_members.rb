class AddImageDataToMembers < ActiveRecord::Migration[6.0]
  def change
  	add_column :members, :image_data, :text
  end
end
