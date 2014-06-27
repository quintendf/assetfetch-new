class Task < ActiveRecord::Base
  attr_accessible :instructions, :type_name, :file_name, :text_answer
  belongs_to :fetch
  mount_uploader :file_name, FileUploader

end
