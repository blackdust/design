class AddOptionsIntoNeed < ActiveRecord::Migration
  def change
    rename_column :needs, :image, :image_urls
    add_column :needs, :tags, :string
    add_column :needs, :solve, :boolean
  end
end
