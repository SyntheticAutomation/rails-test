class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete
      t.string :due_date

      t.references :list, foreign_key: true

      t.timestamps
    end
    add_index :tasks, :list_id
  end
end
