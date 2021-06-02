class AddApproveToAlumnis < ActiveRecord::Migration[6.0]
  def change
    add_column :alumnis, :approve, :boolean, default: false
  end
end
