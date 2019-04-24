class CreatePosts < ActiveRecord::Migration[5.1]
 def self.up
    create_table :posts do |t|
      t.string :name, :limit => 50, :null => false
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end