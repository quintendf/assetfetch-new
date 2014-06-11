class ChangeTaskTypeName < ActiveRecord::Migration
  def up
  	rename_column :tasks, :type, :type_name
  end

  def down
  	rename_column :tasks, :type_name, :type
  end
end
