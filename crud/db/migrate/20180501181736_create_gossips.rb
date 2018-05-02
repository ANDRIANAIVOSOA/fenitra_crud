class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :anonymous_author, null: false
      t.string :content, null: false

      t.timestamps
    end
  end
end
