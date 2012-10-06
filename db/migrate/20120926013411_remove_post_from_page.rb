class RemovePostFromPage < ActiveRecord::Migration
  def self.up
    remove_column :pages, :post
  end

  def self.down
    add_column :pages, :post, :post
  end
end
