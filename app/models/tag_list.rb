class TagList < ActiveRecord::Base
 
  validates :tagname, presence: true, uniqueness: true


end
