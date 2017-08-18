class ChangePostColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :item, :string, null: false
    change_column :posts, :rank, :integer, null: false
  end
end
