class Task < ActiveRecord::Base
  attr_accessible :instructions, :type_name, :file, :text_answer
  belongs_to :fetch
  mount_uploader :file, FileUploader
  

end
