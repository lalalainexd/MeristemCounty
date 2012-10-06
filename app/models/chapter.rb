class Chapter < ActiveRecord::Base
  belongs_to :comic
  has_many :pages, :dependent => :destroy
  validates_presence_of :title
  validates_presence_of :comic_id
  has_attached_file :image, :styles => {
    :thumb => "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large => "600x600>"}
end
