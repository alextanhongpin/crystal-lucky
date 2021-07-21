abstract class BaseSerializer < Lucky::Serializer
  # NOTE: This has been modified to allow custom collection root key.
  # https://luckyframework.org/guides/json-and-apis/rendering-json#customizing-collection-rendering
  def self.for_collection(collection : Enumerable, pages : Lucky::Paginator? = nil, *args, **named_args)
    {
      "data" => collection.map do |object|
        new(object, *args, **named_args)
      end,
      "pageInfo" => pages.nil? || {
        hasNextPage: !(pages.last_page? || pages.overflowed?),
        page:        pages.page,
        perPage:     pages.per_page,
        totalPages:  pages.total,
        totalCount:  pages.item_count,
      },
    }
  end
end
