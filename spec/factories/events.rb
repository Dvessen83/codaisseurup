# spec/factories/events.rb

FactoryGirl.define do
  factory :event do
    name        { Faker::Name.name }
    description { Faker::Lorem.sentence }
    location    { Faker::Address.city }
    price       { Faker::Number.decimal(2) }
    capacity    {Faker::Number.number(3)}
    includes_food {Faker::Boolean }
    includes_drinks {Faker::Boolean }
    starts_at   10.days.from_now
    ends_at     12.days.from_now
    user     { build(:user)}

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end



  end
end
