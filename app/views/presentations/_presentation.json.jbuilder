json.extract! presentation, :id, :title, :emails, :description, :grade, :graded, :created_at, :updated_at
json.url presentation_url(presentation, format: :json)
