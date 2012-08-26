class AddTitleToChapters < ActiveRecord::Migration
  def self.up
    add_column :chapters, :title, :string
  end

  def self.down
    remove_column :chapters, :title
  end
end
