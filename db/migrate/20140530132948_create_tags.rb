class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_type
      t.integer :tag_id
      t.integer :issue_id
      t.string :tag_name


      t.timestamps
    end
  end
end
