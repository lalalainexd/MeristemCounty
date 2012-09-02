class Page < ActiveRecord::Base
  has_one :post
  belongs_to :chapter
  has_attached_file :comic_strip
  before_save :set_page_number

  accepts_nested_attributes_for :post, :reject_if => :has_no_post_content?
  def set_page_number
    self.page_number = chapter.comic.total_pages+1
  end

  def has_no_post_content?(attributes)
    attributes.all? {|key, value| value.blank?}
  end


end
