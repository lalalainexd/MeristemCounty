class Comic < ActiveRecord::Base
  has_many :chapters
  validates_presence_of :title

  def total_pages
    chapters.inject(0) {|sum, chapter| sum + chapter.pages.count}
  end
end

