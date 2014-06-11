class Fetch < ActiveRecord::Base
  attr_accessible :cc, :deadline, :recipient, :title, :user_id, :tasks_attributes
 
  serialize :cc
  belongs_to :user
  has_many :tasks
  accepts_nested_attributes_for :tasks, :allow_destroy => true
end
