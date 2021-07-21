class Api::Merchants::List < ApiAction
  # No auth required.
  include Api::Auth::SkipRequireAuthToken

  # Enabled pagination.
  include Lucky::Paginator::BackendHelpers

  get "/api/merchants" do
    pages, merchants = paginate(MerchantQuery.new.preload_user)
    json MerchantSerializer.for_collection(merchants, pages)
  end
end
