json.array!(@employees) do |employee|
  json.extract! employee, :name, :age, :gender
  json.url employee_url(employee, format: :json)
end
