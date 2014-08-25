json.array!(@books) do |book|
  json.extract! book, :id, :cover, :title, :author, :rating, :isbn, :approved, :active, :following, :created_at, :updated_at
  json.url book_url(book, format: :json)
end
