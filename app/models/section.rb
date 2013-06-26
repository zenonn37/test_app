class Section < ActiveRecord::Base
  attr_accessible :name, :position,  :visiable, :content
  belongs_to :page

end
