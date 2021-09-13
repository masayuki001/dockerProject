class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :folder_id, limit: 4
      t.string :title
      t.integer :status, limit: 4
      t.datetime :due_date, default: -> { 'NOW()' }

      t.timestamps
    end
  end
end
