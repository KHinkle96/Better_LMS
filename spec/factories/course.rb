FactoryBot.define do
  factory :course do
    name { "MATH #{Random.rand(100..500)}" }
  end
end
