FactoryBot.define do
  factory :diary do
    date              { '1991/12/02' }
    place             { '浅古アーチェリー場'}
    event             { '国体予選' }
    total_memo        { '良い１日でした。' }
    association :user
  end
end
