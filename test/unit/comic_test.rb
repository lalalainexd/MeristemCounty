require 'test_helper'

class ComicTest < ActiveSupport::TestCase
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

  # Replace this with your real tests.
  test "Calculates total pages" do
    assert 4, @comic.total_pages
  end
end
