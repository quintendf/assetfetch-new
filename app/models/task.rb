class Task < ActiveRecord::Base
  attr_accessible :name, :type_name, :file
  serialize :properties, ActiveRecord::Coders::Hstore
  belongs_to :fetch
  mount_uploader :file, FileUploader

  %w[text_area].each do |key|
    attr_accessible key
    scope "has_#{key}", lambda { |value| where("properties @> hstore(?, ?)", key, value) }
    
    define_method(key) do
      properties && properties[key]
    end
  
    define_method("#{key}=") do |value|
      self.properties = (properties || {}).merge(key => value)
    end
  end
end
