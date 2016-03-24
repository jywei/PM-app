class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :preject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
