class Api::Posts::Show < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/posts" do
    post = PostQuery.first
    json PostSerializer.new(post)
  end
end
