json.array!(@results) do |result|
  json.extract! result, :id, :eval_id, :user_id, :group_id, :score, :comments
  json.url result_url(result, format: :json)
end
