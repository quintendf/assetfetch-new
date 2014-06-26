class AddTextAnswerToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :text_answer, :string
  end
end
