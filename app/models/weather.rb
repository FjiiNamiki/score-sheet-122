class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '快晴' },
    { id: 3, name: '晴れ' },
    { id: 4, name: 'くもり' },
    { id: 5, name: '雨' },
    { id: 6, name: '雪' },
    { id: 7, name: 'その他' },
    { id: 8, name: 'インドア' }
  ]
  include ActiveHash::Associations
  has_many :exercises
end