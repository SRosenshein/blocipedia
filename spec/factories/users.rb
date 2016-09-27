FactoryGirl.define do
  factory :user do
    email 'person@example.com'
    password 'helloworld'
    password_confirmation 'helloworld'
    
    trait :admin do
      role 'admin'
    end
    
    trait :premium do
      role 'premium'
    end
    
  end
end
