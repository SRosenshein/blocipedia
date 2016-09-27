FactoryGirl.define do
  factory :user do
    email 
    password 
    password_confirmation 
    
    trait :admin do
      role 'admin'
    end
    
    trait :premium do
      role 'premium'
    end
    
  end
end
