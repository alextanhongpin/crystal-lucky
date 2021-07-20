class UserSerializer < BaseSerializer
  def initialize(@user : User)
  end

  def render
    {
      id:    @user.id,
      email: @user.email,
    }
  end
end
