class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :todo_list, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
