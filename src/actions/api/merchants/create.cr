class Api::Merchants::Create < ApiAction
  include Api::Auth::SkipRequireAuthToken

  post "/api/merchants" do
    merchant = SaveMerchant.create!(params)
    json ({data: MerchantSerializer.new(merchant)}), HTTP::Status::CREATED
  end
end
