class MerchantSerializer < BaseSerializer
  def initialize(@merchant : Merchant)
  end

  def render
    {
      id:          @merchant.id,
      name:        @merchant.name,
      description: @merchant.description,
      user:        UserSerializer.new(@merchant.user),
    }
  end
end
