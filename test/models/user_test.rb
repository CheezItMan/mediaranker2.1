require "test_helper"

describe User do
  def create_user
    User.new name: "bob", email: "bob@hope.com", uid: 1234, provider: "github"
  end
  let(:user) { User.new name: "bob", email: "bob@hope.com", uid: 1234, provider: "github"}

  it "must be valid" do
    value(user).must_be :valid?
  end
  it "will not be valid without name, email, provider or uid" do
    [:name, :email, :uid, :provider].each do |field|
      user = create_user
      user[field] = nil
      user.valid?.must_equal false
    end
  end
  it "requires the email to be properly formatted" do
    user.email = "bobhome.com"
    user.valid?.must_equal false
  end
end
