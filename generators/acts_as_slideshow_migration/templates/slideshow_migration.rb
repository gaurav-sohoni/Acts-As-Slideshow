class ActsAsSlideshowMigration < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :imagename, :imagetitle, :description, :imageurl, :thumburl
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end