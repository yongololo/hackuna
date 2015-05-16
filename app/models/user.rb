class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :my_feedbacks
  
  has_many :subscriptions, 	:foreign_key => :user_id,
  							:dependent => :destroy
  has_many :courses, 	:through => :subscriptions,
  						:dependent => :destroy

  def pro_user
  	user.as_pro
  end
end
