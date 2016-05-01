json.array!(@evals) do |eval|
  json.extract! eval, :id, :group_id, :user_id
  json.url eval_url(eval, format: :json)
end
