require 'test_helper'

class PageTest < ActiveSupport::TestCase
  def setup 
    @comic = Comic.create(:title => "Test Comic")
    chapter1 = Chapter.new
    chapter1.pages << Page.new
    chapter1.pages << Page.new

    chapter2 = Chapter.new
    chapter2.pages << Page.new
    chapter2.pages << Page.new

    @comic.chapters << chapter1
    @comic.chapters << chapter2
  end

  test "should set the page number" do
    page5 = Page.new
    @comic.chapters.last.pages << page5
    assert 5, page5.page_number
  end
end
