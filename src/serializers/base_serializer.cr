abstract class BaseSerializer < Lucky::Serializer
  # NOTE: This has been modified to allow custom collection root key.
  # https://luckyframework.org/guides/json-and-apis/rendering-json#customizing-collection-rendering
  def self.for_collection(collection : Enumerable, *args, **named_args)
    key = "data"
    key = self.collection_key if self.responds_to?(:collection_key)
    {
      key => collection.map do |object|
        new(object, *args, **named_args)
      end,
    }
  end
end
