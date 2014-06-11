class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :type
      t.belongs_to :fetch

      t.timestamps
    end
  end
end
