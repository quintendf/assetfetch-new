class CreateFetches < ActiveRecord::Migration
  def change

    create_table :fetches do |t|
      t.string :title
      t.string :recipient
      t.text :cc
      t.datetime :deadline
      t.belongs_to :user

      t.timestamps
    end
  end
end
