json.extract! employee, :id, :firstname, :lastname, :registration, :created_at, :updated_at
json.url employee_url(employee, format: :json)
