class Issue < ActiveRecord::Base

	has_many :comments, :dependent => :destroy

	has_many :tags, :foreign_key => "issue_id"
	
	accepts_nested_attributes_for :tags, :allow_destroy => true, 
	    :reject_if => proc { |attrs| attrs.all? {|k,v| v.blank? } }

    #reject_if => proc { | attri| attri['tagname'].blank?  }

	# def reject_why(attri)  

 #      attri['tagname'].blank?
 #    end

end
