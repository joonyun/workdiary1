class Tag < ActiveRecord::Base
   
   before_save :taguniq
   belongs_to :issue
   #validates  :tag_name, :allow_blank => false

   # validates_uniqueness_of :tag_id, conditions: { where.not(tag_id: :id) }
   # debugger
     validates :tag_id, :presence => true, :uniqueness =>{ :if => :issue_id, :scope =>:issue_id }
   
   
  def taguniq
      puts "여기에 태그 아이디가 필요"
      puts attributes["issue_id"]
      
      tag = Tag.find_by(:issue_id => attributes["issue_id"], :tag_id => attributes["tag_id"] )

       

  end

end
