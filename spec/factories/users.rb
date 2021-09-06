FactoryBot.define do
  factory :user do
    nickname              { 'エマ' }
    name                  { '前原エマ'}
    email                 { Faker::Internet.free_email }
    password              { 'abc123' }
    password_confirmation { password }
    age                   { 1 }
    gender_id             { 2 }
    handle                { 'GMX' }
    rim                   { '990TX' }
    bowstring             { 'FF' }
    arrow                 { 'EASTON ACE' }
    other                 { '他にもいろいろあるよ〜' }
    introduction          { '初心者ですが頑張ります！' }
  end
end