class Course < ActiveRecord::Base
	has_many :my_feedbacks

	has_many :subscriptions, 	:foreign_key => :course_id,
								:dependent => :destroy
	has_many :users, 	:through => :subscriptions,
						:dependent => :destroy
end
