FactoryGirl.define do
  factory :user do
    provider :github
    sequence(:uid) { |n| "id#{n}" }
    sequence(:nickname) { |n| "nick#{n}" }
  end
end
