class Comic < ActiveRecord::Base
  has_many :chapters, :dependent => :destroy
  has_attached_file :image, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large => "600x600>"}
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_format_of :background_color, :with => /^#(?:[0-9a-f]{3})(?:[0-9a-f]{3})?$/i
  before_validation :set_default

  def set_default
    background_color = "#FFF" if background_color.nil?
    puts "blah"
  end

  def total_pages
    chapters.inject(0) {|sum, chapter| sum + chapter.pages.count}
  end
end

