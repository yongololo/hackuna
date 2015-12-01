class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :no
      t.string :video_link

      t.timestamps
    end
  end
end
