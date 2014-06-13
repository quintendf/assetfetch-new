class Task < ActiveRecord::Base
  attr_accessible :instructions, :type_name, :file
  serialize :properties, ActiveRecord::Coders::Hstore
  belongs_to :fetch
  mount_uploader :file, FileUploader
end
