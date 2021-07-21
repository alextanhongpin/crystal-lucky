class PostSerializer < BaseSerializer
  def initialize(@post : Post)
  end

  def render
    {
      id:   @post.id,
      body: @post.body,
    }
  end
end
