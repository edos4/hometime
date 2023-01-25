FactoryBot.define do
  factory :reservation do
    code { "MyString" }
    start_date { "2023-01-25" }
    end_date { "2023-01-25" }
    number_of_adults { 1 }
    number_of_children { 1 }
    number_of_infants { 1 }
    nights { 1 }
    number_of_guests { 1 }
    currency { "MyString" }
    status { "MyString" }
    payout_price { 1.5 }
    security_price { 1.5 }
    total_price { 1.5 }
    localized_description { "MyString" }
    guest
  end
end
