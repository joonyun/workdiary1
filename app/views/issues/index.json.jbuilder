json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :context
  json.url issue_url(issue, format: :json)
end
