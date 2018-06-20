FactoryBot.define do
  factory :car do
    model { Faker::Vehicle.model }
    make { Faker::Vehicle.make }
    color { Faker::Vehicle.color }
    mileage { Faker::Vehicle.mileage }
    owner { Faker::Name.name }
    is_for_sale { [true, false].sample }
  end
end
