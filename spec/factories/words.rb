FactoryGirl.define do
  factory :word do
    name Faker::Hipster.word
    after(:create) do |_definition|
      FactoryGirl.create_list(:definition, 2)
    end
  end
end
