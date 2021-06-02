class CreateAlumnis < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnis do |t|
      t.string :name
      t.string :profession
      t.text :description
      t.string :facebook_url
      t.string :linkedin_url
      t.string :twitter_url

      t.timestamps
    end
  end
end
