class AddCommentsCountToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :comments_count, :integer
  end
end
