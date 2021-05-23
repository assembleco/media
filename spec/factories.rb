FactoryBot.define do
  factory :role do
    name { "MyString" }
    summary { "MyText" }
    agency { nil }
  end

  factory :agency do
    name { "MyString" }
    label { nil }
    online_address { "MyString" }
    phone_number { "MyString" }
    hours { "" }
  end

  factory :label do
    name { "MyString" }
    summary { "MyText" }
  end

  factory :locale do
    name { "MyString" }
    inside { 1 }
    boundary { "" }
    incorporated_on { "2021-05-23" }
  end

end
