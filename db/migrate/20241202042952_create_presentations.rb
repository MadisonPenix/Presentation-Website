class CreatePresentations < ActiveRecord::Migration[8.0]
  def change
    create_table :presentations do |t|
      t.string :title
      t.text :emails
      t.text :description
      t.integer :grade
      t.boolean :graded

      t.timestamps
    end
  end
end
