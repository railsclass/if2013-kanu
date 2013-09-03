json.array!(@watercourses) do |watercourse|
  json.extract! watercourse, :name
  json.url watercourse_url(watercourse, format: :json)
end
