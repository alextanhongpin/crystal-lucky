class Api::Posts::Create < ApiAction
  include Api::Auth::SkipRequireAuthToken

  post "/api/posts" do
    post = SavePost.create!(params)
    json PostSerializer.new(post)
  end
end
