class Subject < ActiveRecord::Base
   attr_accessible :name, :position,:visible
   
   has_many :pages

   scope :visible, where(:visible =>true)

   scope :invisible, where(:visible => false)

   scope :search, lambda{|query|where(["name Like ?","%#{query}%"])}
end
