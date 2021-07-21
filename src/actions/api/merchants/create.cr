class Api::Merchants::Create < ApiAction
  post "/api/merchants" do
    merchant = SaveMerchant.create!(params, user_id: current_user.id)
    json ({data: MerchantSerializer.new(merchant)}), HTTP::Status::CREATED
  end
end
