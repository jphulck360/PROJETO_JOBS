json.extract! course, :id, :nome, :instituicao, :data_inicial, :data_final, :created_at, :updated_at
json.url course_url(course, format: :json)
