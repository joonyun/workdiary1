class CreateTagLists < ActiveRecord::Migration
  def change
    create_table :tag_lists do |t|
      t.string :tagname
      t.integer :tag_count

      t.timestamps
    end
  end
end
