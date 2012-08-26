class AddComicIdToChapters < ActiveRecord::Migration
  def self.up
    add_column :chapters, :comic_id, :integer
  end

  def self.down
    remove_column :chapters, :comic_id
  end
end
