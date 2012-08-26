class AddPageNumberToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :page_number, :integer
  end

  def self.down
    remove_column :pages, :page_number
  end
end
