# frozen_string_literal: true

FactoryBot.define do
  factory :guest do
    email { 'MyString' }
    first_name { 'MyString' }
    last_name { 'MyString' }
    phone_numbers { '' }
  end
end
