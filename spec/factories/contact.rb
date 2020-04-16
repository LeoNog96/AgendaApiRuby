FactoryBot.define do
  factory :contact do
    name {FFaker::Name.name}
    email { FFaker::Internet.email }
    description {FFaker::String.from_regexp([*'a'..'z'].freeze)}
    phone {FFaker::PhoneNumberBR.mobile_phone_number}
    user {build(:user)}
  end
end