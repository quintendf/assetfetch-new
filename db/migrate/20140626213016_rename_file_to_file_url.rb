class RenameFileToFileUrl < ActiveRecord::Migration
  def change
  	rename_column :tasks, :file, :file_name
  end
end
