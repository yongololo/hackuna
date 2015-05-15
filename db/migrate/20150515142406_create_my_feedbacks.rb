class CreateMyFeedbacks < ActiveRecord::Migration
  def change
    create_table :my_feedbacks do |t|
      t.integer :user_id
      t.integer :course_id
      t.text :content

      t.timestamps
    end
  end
end
