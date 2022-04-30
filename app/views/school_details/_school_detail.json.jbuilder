json.extract! school_detail, :id, :teacher, :school, :school_year, :created_at, :updated_at
json.url school_detail_url(school_detail, format: :json)
