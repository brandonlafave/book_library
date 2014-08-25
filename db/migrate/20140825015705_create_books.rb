class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :cover
      t.string :title
      t.string :author
      t.integer :rating
      t.integer :isbn
      t.boolean :approved
      t.boolean :active
      t.boolean :following
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
