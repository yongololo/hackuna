json.array!(@my_feedbacks) do |my_feedback|
  json.extract! my_feedback, :id, :user_id, :course_id, :content
  json.url my_feedback_url(my_feedback, format: :json)
end
