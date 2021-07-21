class Api::Posts::Create < ApiAction
  include Api::Auth::SkipRequireAuthToken

  post "/api/posts" do
    post = SavePost.create!(params)
    json ({data: PostSerializer.new(post)}), HTTP::Status::CREATED
  end
end
