class CreateFetches < ActiveRecord::Migration
  def change
  	drop_table :fetches

    create_table :fetches do |t|
      t.string :title
      t.string :recipient
      t.text :cc
      t.datetime :deadline

      t.timestamps
    end
  end
end
