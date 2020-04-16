require 'rails_helper'
require 'contact'

RSpec.describe Contact, type: :model do
  it "Contacts invalid" do
    name = FFaker::Name.name
    email = FFaker::Internet.email

    expect(Contact.create(email: email, name: name)).to_not be_valid
  end
  
  it "return the correct user" do
    contact = build(:contact)
    expect(contact).to_not be_nil
  end
end
