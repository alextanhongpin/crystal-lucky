class Merchant < BaseModel
  table do
    column name : String
    column description : String
    belongs_to user : User
  end
end
