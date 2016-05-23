class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :task_user, index: true, foreign_key: true
      t.datetime :due_date
      t.string :description
      t.boolean :completed

      t.timestamps null: false
    end
  end
end