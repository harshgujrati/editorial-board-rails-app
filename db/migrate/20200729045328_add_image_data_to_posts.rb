class AddImageDataToPosts < ActiveRecord::Migration[6.0]
  def change
  	add_column :posts, :image_data, :text
  end
end
