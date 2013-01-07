class CreateContent < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title, null: false
      t.integer :publication_id, null: false
      t.text :body
      t.string :embed_url
      t.timestamps
    end
  end
end
