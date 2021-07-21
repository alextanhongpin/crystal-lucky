class Api::Merchants::Create < ApiAction
  include Api::Concerns::Response

  post "/api/merchants" do
    merchant = SaveMerchant.create!(params, user_id: current_user.id)
    merchant = MerchantQuery.new.preload_user.find(merchant.id)
    created(MerchantSerializer.new(merchant))
  end
end
