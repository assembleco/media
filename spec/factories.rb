FactoryBot.define do
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
