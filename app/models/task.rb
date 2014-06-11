class Task < ActiveRecord::Base
  attr_accessible :name, :type_name, :file

  belongs_to :fetch

  mount_uploader :file, FileUploader
end
