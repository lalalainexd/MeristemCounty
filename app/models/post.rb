class Post < ActiveRecord::Base
  belongs_to :page
  validates_length_of :title
  validates_presence_of :title, :content
end
