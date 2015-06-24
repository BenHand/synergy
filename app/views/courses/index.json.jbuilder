json.array!(@courses) do |course|
  json.extract! course, :id, :name, :max_count, :employee_id, :company_id
  json.url course_url(course, format: :json)
end
