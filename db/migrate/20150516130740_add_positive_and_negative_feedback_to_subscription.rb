class AddPositiveAndNegativeFeedbackToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :positive_feedback, :text
    add_column :subscriptions, :negative_feedback, :text
  end
end
