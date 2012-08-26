class AddChapterIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :chapter_id, :integer
  end

  def self.down
    remove_column :pages, :chapter_id
  end
end
