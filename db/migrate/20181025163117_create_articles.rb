class Article < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :tag_id
      t.text :body
      t.timestamps
    end
  end
end
