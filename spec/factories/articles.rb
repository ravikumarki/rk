FactoryBot.define do
  factory :article do
    # title { "MyString" }
    # content { "MyText" }
    # slug { "MyString" }
    title { "Sample article" }
    content { "Sample content" }
    slug { "sample-article" }
    association :user
  end
end
