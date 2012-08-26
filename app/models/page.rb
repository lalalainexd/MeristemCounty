class Page < ActiveRecord::Base
  has_one :post
  belongs_to :chapter
  has_attached_file :comic_strip
  before_save :set_page_number

  def set_page_number
    self.page_number = chapter.comic.total_pages+1
  end
end
