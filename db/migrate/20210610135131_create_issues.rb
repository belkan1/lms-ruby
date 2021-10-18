class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.integer :book_id
      t.integer :user_id
      t.date :issue_date
      t.date :return_date
      t.integer :status,:default =>0

      t.timestamps
    end
  end
end
