class Api::Posts::Show < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/posts/:id" do
    post = PostQuery.find(id)
    json PostSerializer.new(post)
  end
end
