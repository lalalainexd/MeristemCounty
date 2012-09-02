class Chapter < ActiveRecord::Base
  belongs_to :comic
  has_many :pages
  validates_presence_of :title
  validates_presence_of :comic_id

end
