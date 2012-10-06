class RemoveAttachmentComicStripFromPage < ActiveRecord::Migration
  def self.up
    remove_column :pages, :comic_strip_file_name
    remove_column :pages, :comic_strip_content_type
    remove_column :pages, :comic_strip_file_size
    remove_column :pages, :comic_strip_updated_at
  end

  def self.down
    add_column :pages, :comic_strip_file_name, :string
    add_column :pages, :comic_strip_content_type, :string
    add_column :pages, :comic_strip_file_size, :integer
    add_column :pages, :comic_strip_updated_at, :datetime
  end
end
