class Api::Merchants::Show < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/merchants/:id" do
    merchant = MerchantQuery.find(id)
    json MerchantSerializer.new(merchant)
  end
end
