class Page < ActiveRecord::Base
  has_many :panels , :dependent => :destroy, :autosave => true
  belongs_to :chapter

  accepts_nested_attributes_for :panels, :allow_destroy => true



end
