class AddBackgroundColorToComic < ActiveRecord::Migration
  def self.up
    add_column :comics, :background_color, :string
  end

  def self.down
    remove_column :comics, :background_color
  end
end
