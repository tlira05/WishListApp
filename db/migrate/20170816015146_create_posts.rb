class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.string :item, :null => false
    	t.integer :rank, :default => 0
    	t.text :description
    	t.string :link, :default => "", :null => false
    	t.string :image, :default => "default.png"
      t.timestamps
    end
  end
end
