class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.datetime :created
      t.datetime :completed

      t.timestamps
    end
  end
end
