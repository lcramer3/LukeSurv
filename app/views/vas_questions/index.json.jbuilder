json.array!(@vas_questions) do |vas_question|
  json.extract! vas_question, :id, :prompt, :order
  json.url vas_question_url(vas_question, format: :json)
end
