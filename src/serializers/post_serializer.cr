class PostSerializer < BaseSerializer
  def initialize(@post : Post)
  end

  def render
    {
      id:   @post.id,
      body: @post.body,
    }
  end

  # Overwrite the root key for the collection.
  # When not specified, this will default to `data`
  def self.collection_key
    "posts"
  end
end
