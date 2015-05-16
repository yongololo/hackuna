class DropUserFeedback < ActiveRecord::Migration
  def change
  	drop_table :user_feedbacks
  end
end
