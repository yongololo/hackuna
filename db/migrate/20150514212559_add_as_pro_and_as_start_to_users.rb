class AddAsProAndAsStartToUsers < ActiveRecord::Migration
  def change
    add_column :users, :as_pro, :boolean
    add_column :users, :as_start, :boolean
  end
end
