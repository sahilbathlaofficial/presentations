json.array!(@articles) do |article|
  json.extract! article, :id, :subject, :content, :author_id
  json.url article_url(article, format: :json)
end
