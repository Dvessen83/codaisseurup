# spec/factories/events.rb

FactoryGirl.define do
  factory :event do
    name        { Faker::RockBand.name }
    description {Faker::Lorem.sentence }
    location    { Faker::Address.city }
    price       { Faker::Number.decimal }
    capacity    {Faker::Number.number(3)}
    includes_food {Faker::Boolean }
    includes_drinks {Faker::Boolean }
    starts_at   { Faker::Date.forward(5)}
    ends_at     {Faker::Date.forward(10)}
    user_id     { build(:user)}

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end


    
  end
end
