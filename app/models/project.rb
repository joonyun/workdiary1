class Project < ActiveRecord::Base

  has_many :tasks
 
  accepts_nested_attributes_for :tasks, 
                   allow_destroy: true,
                   reject_if: proc { |attributes| attributes['task'].blank? } 

  # def task_attributes=(task_attributes) 
  	# task_attributes.each do |attributes|
     # if attributes[:id].blank?
      # tasks.build(attributes)
     # else
      # task = tasks.detect { |t| t.id==attributes[:id].to_i}
      # task.attributes = attributes
     # end
    # end
  # end 
  # 
  # def save_tasks
  	# tasks.each do |t|
     # t.save(false)
  	# end
  # end		

end
