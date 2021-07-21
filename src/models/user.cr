class User < BaseModel
  include Carbon::Emailable
  include Authentic::PasswordAuthenticatable

  # To overwrite default primary key.
  # skip_default_columns

  table do
    # Primary key defaults to UUID (configured in
    # models/base_model.cr). When using an int primary
    # key, this has to be overwritten here.
    # primary_key id : Int64
    # timestamps

    column email : String
    column encrypted_password : String
    has_one merchant : Merchant
  end

  def emailable : Carbon::Address
    Carbon::Address.new(email)
  end
end
