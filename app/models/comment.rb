class Comment < ActiveRecord::Base
    

	belongs_to :issue, :counter_cache => true, :touch =>true

end
