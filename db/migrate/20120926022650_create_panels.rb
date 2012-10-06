class CreatePanels < ActiveRecord::Migration
  def self.up
    create_table :panels do |t|
      t.integer :page_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :panels
  end
end
