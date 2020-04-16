require 'rails_helper'
require 'user'

RSpec.describe User, type: :model do
  it "email invalid" do
    user = build(:user, email: FFaker::Name.name)

    expect(user).to_not be_valid
  end
  
  it "return the correct user" do

    user = build(:user)

    expect(user).to_not be_nil
  end
end
