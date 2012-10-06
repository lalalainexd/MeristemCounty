class Panel < ActiveRecord::Base
  has_attached_file :image, :styles => {
    :thumb => "x100",
    :large => "600x600>"}
  belongs_to :page, :autosave => true
end
