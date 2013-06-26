class AdminUser < ActiveRecord::Base
   attr_accessible :first_name, :last_name,:username

   has_and_belongs_to_many :pages
   has_many :section_edits

   scope :named, lambda{|first,last| where(:first_name =>first,:last_name=>last)}
end
