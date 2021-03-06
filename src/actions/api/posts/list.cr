class Api::Posts::List < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/posts" do
    posts = PostQuery.new
    json PostSerializer.for_collection(posts)
  end
end
