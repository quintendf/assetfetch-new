class AddPropertiesToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :properties, :hstore
  end
end
