FactoryGirl.define do
  factory :email do
    subject     { Faker::Lorem.sentence }
    body        { Faker::Lorem.paragraph }
    association :user_sent, factory: :user
  end

  trait :with_users do
    after(:create) { |email| email.users = 3.times.map { create(:user) } }
  end
end
