json.extract! timesheet, :id, :sector, :created_at, :updated_at
json.url timesheet_url(timesheet, format: :json)
