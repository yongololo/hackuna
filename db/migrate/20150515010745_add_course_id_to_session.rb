class AddCourseIdToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :course_id, :integer
  end
end
