class TaskChangeNameToInstructions < ActiveRecord::Migration
  def up
  	rename_column :tasks, :name, :instructions
  end

  def down
  	rename_column :tasks, :instructions, :name
  end
end
